const Product = require('../models/product');
const Category = require('../models/category');
const storage = require('../utils/cloud_storage');
const asyncForEach = require('../utils/async_foreach');
const { Op } = require('sequelize');

// Helper to format product for App (images list)
const formatProduct = (p) => {
    const json = p.toJSON();
    json.images = [];
    if (json.image1) json.images.push(json.image1);
    if (json.image2) json.images.push(json.image2);
    if (json.image3) json.images.push(json.image3);
    // Remove individual image fields if desired, or keep them for backward compat
    return json;
};

module.exports = {

    async ListarHabitacion(req, res, next) {
        try {
            const data = await Product.findAll();
            const formatted = data.map(formatProduct);
            return res.status(200).json(formatted);
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al obtener los hoteles',
                error
            });
        }
    },

    async eliminarHotel(req, res, next) {
        try {
            const { id } = req.params;
            await Product.destroy({ where: { id } });
            return res.status(200).json({
                success: true,
                message: 'Hotel eliminado'
            });
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                success: false,
                message: 'Error al eliminar hotel',
                error
            });
        }
    },

    async listProductsRecentAdd(req, res, next) {
        try {
            const data = await Product.findAll({
                order: [['created_at', 'DESC']],
                limit: 10
            });
            return res.status(200).json(data.map(formatProduct));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al obtener recientes',
                error
            });
        }
    },

    async listProductsRandom(req, res, next) {
        try {
            const data = await Product.findAll({
                order: sequelize.random(), // Make sure sequelize is imported or use literal if needed
                limit: 10
            });
            // Note: Sequelize.literal('RANDOM()') works for Postgres. 
            // For cross-db support might need adjustment. using simple findAll for now if random fails.
            return res.status(200).json(data.map(formatProduct));
        } catch (error) {
            // Fallback if random fails
            try {
                const data = await Product.findAll({ limit: 10 });
                return res.status(200).json(data.map(formatProduct));
            } catch (e) {
                return res.status(500).json({ message: 'Error', error: e });
            }
        }
    },

    async findBySubcategory(req, res, next) {
        try {
            const { id_sub_category } = req.params;
            const data = await Product.findAll({
                where: { id_sub_category }
            });
            return res.status(200).json(data.map(formatProduct));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al listar por subcategoria',
                error
            });
        }
    },

    async findByCategory(req, res, next) {
        try {
            const { id_category } = req.params;
            const data = await Product.findAll({
                where: { id_category }
            });
            return res.status(200).json(data.map(formatProduct));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al listar por categoria',
                error
            });
        }
    },

    async findByCategoryAndProductName(req, res, next) {
        try {
            const { id_category, product_name } = req.params;
            const data = await Product.findAll({
                where: {
                    id_category,
                    name: { [Op.iLike]: `%${product_name}%` } // ILIKE for postgres
                }
            });
            return res.status(200).json(data.map(formatProduct));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al buscar producto',
                error
            });
        }
    },

    async create(req, res, next) {
        let product = JSON.parse(req.body.product);
        const files = req.files;

        if (files.length === 0) {
            return res.status(400).json({ message: 'Error: No tiene imagen' });
        }

        try {
            // Create product first to get ID
            // Default images to null initially
            const newProduct = await Product.create(product);

            let inserts = 0;
            const imagesToUpdate = {};

            await asyncForEach(files, async (file, index) => {
                const pathImage = `image_${Date.now()}_${index}`;
                const url = await storage(file, pathImage);

                if (url) {
                    if (index === 0) imagesToUpdate.image1 = url;
                    if (index === 1) imagesToUpdate.image2 = url;
                    if (index === 2) imagesToUpdate.image3 = url;
                }
                inserts++;
            });

            if (inserts > 0) {
                await newProduct.update(imagesToUpdate);
            }

            return res.status(201).json({
                success: true,
                message: 'Producto registrado correctamente',
                data: formatProduct(newProduct)
            });

        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al registrar producto',
                error
            });
        }
    }
};