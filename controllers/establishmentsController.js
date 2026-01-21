const Establishment = require('../models/establishment');
const Category = require('../models/category');
const storage = require('../utils/cloud_storage');
const asyncForEach = require('../utils/async_foreach');
const { Op } = require('sequelize');
const sequelize = require('../config/database');

// Helper to format establishment for App (images list)
const formatEstablishment = (e) => {
    const json = e.toJSON();
    json.images = [];
    if (json.image1) json.images.push(json.image1);
    if (json.image2) json.images.push(json.image2);
    if (json.image3) json.images.push(json.image3);
    return json;
};

module.exports = {

    async ListarTodo(req, res, next) {
        try {
            const data = await Establishment.findAll();
            const formatted = data.map(formatEstablishment);
            return res.status(200).json(formatted);
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al obtener los establecimientos',
                error
            });
        }
    },

    async eliminarEstablecimiento(req, res, next) {
        try {
            const { id } = req.params;
            await Establishment.destroy({ where: { id } });
            return res.status(200).json({
                success: true,
                message: 'Establecimiento eliminado'
            });
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                success: false,
                message: 'Error al eliminar establecimiento',
                error
            });
        }
    },

    async listRecentAdd(req, res, next) {
        try {
            const data = await Establishment.findAll({
                order: [['created_at', 'DESC']],
                limit: 10
            });
            return res.status(200).json(data.map(formatEstablishment));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al obtener recientes',
                error
            });
        }
    },

    async listRandom(req, res, next) {
        try {
            const data = await Establishment.findAll({
                order: sequelize.random(),
                limit: 10
            });
            return res.status(200).json(data.map(formatEstablishment));
        } catch (error) {
            try {
                const data = await Establishment.findAll({ limit: 10 });
                return res.status(200).json(data.map(formatEstablishment));
            } catch (e) {
                return res.status(500).json({ message: 'Error', error: e });
            }
        }
    },

    async findBySubcategory(req, res, next) {
        try {
            const { id_sub_category } = req.params;
            const data = await Establishment.findAll({
                where: { id_sub_category }
            });
            return res.status(200).json(data.map(formatEstablishment));
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
            const data = await Establishment.findAll({
                where: { id_category }
            });
            return res.status(200).json(data.map(formatEstablishment));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al listar por categoria',
                error
            });
        }
    },

    async findByCategoryAndName(req, res, next) {
        try {
            const { id_category, name } = req.params;
            const data = await Establishment.findAll({
                where: {
                    id_category,
                    name: { [Op.iLike]: `%${name}%` }
                }
            });
            return res.status(200).json(data.map(formatEstablishment));
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al buscar establecimiento',
                error
            });
        }
    },

    async create(req, res, next) {
        let establishment = JSON.parse(req.body.establishment);
        const files = req.files;

        if (files.length === 0) {
            return res.status(400).json({ message: 'Error: No tiene imagen' });
        }

        try {
            const newEstablishment = await Establishment.create(establishment);

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
                await newEstablishment.update(imagesToUpdate);
            }

            return res.status(201).json({
                success: true,
                message: 'Establecimiento registrado correctamente',
                data: formatEstablishment(newEstablishment)
            });

        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Error al registrar establecimiento',
                error
            });
        }
    }
};
