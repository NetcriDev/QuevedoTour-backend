const Banner = require('../models/banner');
const storage = require('../utils/cloud_storage');

module.exports = {

    async index(req, res, next) {
        try {
            const data = await Banner.findAll();
            return res.status(200).json(data);
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al obtener banners',
                error
            });
        }
    },

    async create(req, res, next) {
        try {
            // Note: req.body might need parsing if it comes as stringified JSON in 'banner' field
            // Assuming standard multipart form data where 'title' is a field

            const files = req.files;

            if (files.length === 0) {
                return res.status(400).json({ message: 'Debe subir una imagen' });
            }

            const pathImage = `banner_${Date.now()}`;
            const url = await storage(files[0], pathImage);

            if (!url) {
                return res.status(500).json({ message: 'Error al subir imagen' });
            }

            const banner = await Banner.create({
                title: req.body.title || 'Sin Título',
                image: url
            });

            return res.status(201).json({
                success: true,
                message: 'Banner creado correctamente',
                data: banner
            });

        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al crear banner',
                error
            });
        }
    },

    async delete(req, res, next) {
        try {
            const { id } = req.params;
            await Banner.destroy({ where: { id } });
            return res.status(200).json({ success: true, message: 'Banner eliminado' });
        } catch (error) {
            return res.status(500).json({ message: 'Error eliminando banner', error });
        }
    }
};
