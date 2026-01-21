const Category = require('../models/category');

module.exports = {

    async getAll(req, res, next) {
        try {
            const data = await Category.findAll({
                order: [['name', 'ASC']]
            });
            // console.log(`Categorias ${JSON.stringify(data)}`);
            return res.status(200).json(data);
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Hubo un error al obtener las categorias',
                error: error,
                success: false
            });
        }
    },

    async create(req, res, next) {
        try {
            const categoryData = req.body;
            // console.log(`Categoria enviada: ${JSON.stringify(categoryData)}`);

            const newCategory = await Category.create(categoryData);

            return res.status(201).json({
                message: 'La categoria se creo correctamente',
                success: true,
                data: newCategory.id
            });
        } catch (error) {
            console.error(`Error: ${error}`);
            return res.status(500).json({
                message: 'Hubo un error al crear la categoria',
                success: false,
                error: error
            });
        }
    }
};