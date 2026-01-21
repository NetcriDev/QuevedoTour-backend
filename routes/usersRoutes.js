const UsersController = require('../controllers/usersController');

//const passport = require('passport');

module.exports = (app, upload, passport) => {

    // TRAER DATO
    app.get('/api/users/getAll', UsersController.getAll);
    app.get('/api/users/findById/:id', passport.authenticate('jwt', { session: false }), UsersController.findById);

    //GUARDAR DATOS
    app.post('/api/users/create', upload.array('image', 1), UsersController.registerWithImage);
    app.post('/api/users/login', UsersController.login);

    //ACTUALIZAR DATOS
    app.put('/api/users/update', passport.authenticate('jwt', { session: false }), upload.array('image', 1), UsersController.update);
    app.put('/api/users/updateNotificationToken', UsersController.updateNotificationToken);

}