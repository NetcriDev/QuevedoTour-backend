const BannersController = require('../controllers/bannersController');

module.exports = (app, upload) => {

    app.get('/api/banners', BannersController.index);
    app.post('/api/banners/create', upload.array('image', 1), BannersController.create);
    app.delete('/api/banners/delete/:id', BannersController.delete);

}
