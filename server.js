const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');
const multer = require('multer');
const admin = require('firebase-admin');
const serviceAccount = require('./serviceAccountKey.json');
const sequelize = require('./config/database'); // Import Sequelize config

// Inicializar Firebase
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});

const upload = multer({
    storage: multer.memoryStorage()
});

/* RUTAS */
const users = require('./routes/usersRoutes');
const categories = require('./routes/categoriesRoutes');
const subCategories = require('./routes/subCategoriesRoutes');
const establishments = require('./routes/establishmentsRoutes');
const address = require('./routes/addressRoutes');
const orders = require('./routes/ordersRoutes');
const banners = require('./routes/bannersRoutes'); // NEW

const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));
app.use(cors());
app.disable('x-powered-by');
app.set('port', port);

/* LLAMANDO A LAS RUTAS */
users(app, upload);
categories(app);
subCategories(app);
address(app, upload);
orders(app);
establishments(app, upload);
banners(app, upload); // Register Banners

// Test DB Connection
sequelize.authenticate()
    .then(() => {
        console.log('Conexión a la base de datos establecida exitosamente.');
        // Sincronizar modelos (Crea tablas si no existen)
        return sequelize.sync();
    })
    .catch(err => {
        console.error('No se pudo conectar a la base de datos:', err);
    });

server.listen(port, '0.0.0.0', function () { // Bind to all interfaces
    console.log('Aplicacion de NodeJS ' + port + ' Iniciada...');
});


// ERROR HANDLER
app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});

module.exports = {
    app: app,
    server: server
}