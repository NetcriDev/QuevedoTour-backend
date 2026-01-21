const EstablishmentsController = require('../controllers/establishmentsController');

module.exports = (app, upload) => {

    app.get('/api/establishments/getAll', EstablishmentsController.ListarTodo);
    app.get('/api/establishments/listRandom', EstablishmentsController.listRandom);
    app.get('/api/establishments/listRecentAdd', EstablishmentsController.listRecentAdd);
    app.get('/api/establishments/findByCategory/:id_category', EstablishmentsController.findByCategory);
    app.get('/api/establishments/findBySubcategory/:id_sub_category', EstablishmentsController.findBySubcategory);
    app.get('/api/establishments/findByCategoryAndName/:id_category/:name', EstablishmentsController.findByCategoryAndName);

    app.post('/api/establishments/create', upload.array('image', 3), EstablishmentsController.create);
    app.delete('/api/establishments/delete/:id', EstablishmentsController.eliminarEstablecimiento)

}
