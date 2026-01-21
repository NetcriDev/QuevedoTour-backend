const Sequelize = require('sequelize');

// Usar variables de entorno o valores por defecto
const dbName = process.env.DB_NAME || 'db-quevedo-tour';
const dbUser = process.env.DB_USER || 'postgres';
const dbPass = process.env.DB_PASS || '1234';
const dbHost = process.env.DB_HOST || 'localhost';
const dbDialect = process.env.DB_DIALECT || 'postgres'; // 'mysql', 'sqlite', 'postgres'

const sequelize = new Sequelize(dbName, dbUser, dbPass, {
    host: dbHost,
    dialect: dbDialect,
    port: 5432,
    logging: false, // Set to console.log to see SQL queries
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
});

module.exports = sequelize;
