const Review = require('../models/review');
const User = require('../models/user');
const Establishment = require('../models/establishment');
const storage = require('../utils/cloud_storage');
const asyncForEach = require('../utils/async_foreach');

module.exports = {

    async create(req, res, next) {
        try {
            const reviewData = JSON.parse(req.body.review);
            const files = req.files || [];

            // Handle images if any
            const imageUrls = [];
            if (files.length > 0) {
                await asyncForEach(files, async (file, index) => {
                    const pathImage = `review_${Date.now()}_${index}`;
                    const url = await storage(file, pathImage);
                    if (url) imageUrls.push(url);
                });
                reviewData.images = imageUrls;
            }

            const newReview = await Review.create(reviewData);

            // Update establishment's average rating
            await updateAverageRating(reviewData.id_establishment);

            // Fetch the review again with user details to return to app
            const reviewWithUser = await Review.findByPk(newReview.id, {
                include: [{
                    model: User,
                    attributes: ['name', 'lastname', 'image', 'email']
                }]
            });

            // Format for app
            const formatted = reviewWithUser.toJSON();
            formatted.user_name = `${formatted.User.name} ${formatted.User.lastname}`;
            formatted.user_image = formatted.User.image;
            formatted.user_email = formatted.User.email;
            delete formatted.User;

            return res.status(201).json({
                success: true,
                message: 'Reseña creada correctamente',
                data: formatted
            });

        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                success: false,
                message: 'Error al crear la reseña',
                error
            });
        }
    },

    async findByEstablishment(req, res, next) {
        try {
            const { id_establishment } = req.params;
            const data = await Review.findAll({
                where: { id_establishment },
                include: [{
                    model: User,
                    attributes: ['name', 'lastname', 'image', 'email']
                }],
                order: [['created_at', 'DESC']]
            });

            // Format for app
            const formattedData = data.map(r => {
                const json = r.toJSON();
                json.user_name = json.User ? `${json.User.name} ${json.User.lastname}` : 'Usuario';
                json.user_image = json.User ? json.User.image : null;
                json.user_email = json.User ? json.User.email : null;
                delete json.User;
                return json;
            });

            return res.status(200).json(formattedData);
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                success: false,
                message: 'Error al obtener las reseñas',
                error
            });
        }
    },

    async delete(req, res, next) {
        try {
            const { id } = req.body;
            const review = await Review.findByPk(id);

            if (!review) {
                return res.status(404).json({
                    success: false,
                    message: 'Reseña no encontrada'
                });
            }

            const establishmentId = review.id_establishment;
            await review.destroy();

            // Update establishment's average rating
            await updateAverageRating(establishmentId);

            return res.status(200).json({
                success: true,
                message: 'Reseña eliminada'
            });
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                success: false,
                message: 'Error al eliminar la reseña',
                error
            });
        }
    }
};

async function updateAverageRating(id_establishment) {
    try {
        const reviews = await Review.findAll({
            where: { id_establishment },
            attributes: ['rating']
        });

        if (reviews.length === 0) {
            await Establishment.update({ rating: 4.5 }, { where: { id: id_establishment } });
            return;
        }

        const sum = reviews.reduce((acc, curr) => acc + parseFloat(curr.rating), 0);
        const average = sum / reviews.length;

        await Establishment.update({ rating: average }, { where: { id: id_establishment } });
    } catch (error) {
        console.error('Error updating average rating:', error);
    }
}
