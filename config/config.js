const promise = require('bluebird');
const options = {
    promiseLib: promise,
    query: (e) => { }
}

const pgp = require('pg-promise')(options);
const types = pgp.pg.types;
types.setTypeParser(1114, function (stringValue) {
    return stringValue;
});

const databaseConfig = {
    'host': process.env.DB_HOST || 'localhost',
    'port': process.env.DB_PORT || 5432,
    'database': process.env.DB_NAME || 'db-quevedo-tour',
    'user': process.env.DB_USER || 'postgres',
    'password': process.env.DB_PASS || '1234',
    ssl: process.env.DB_SSL === 'true' || process.env.NODE_ENV === 'production',
    dialect: 'postgres',
    dialectOptions: {
        "ssl": process.env.DB_SSL === 'true' || process.env.NODE_ENV === 'production' 
            ? { "require": true, "rejectUnauthorized": false } 
            : false
    },
    rejectUnauthorized: false,
    requestCert: true,
    agent: false




    /*  
    'host': '127.0.0.1',
    'port': 5432,
    'database': 'db_quenetur',
    'user': 'postgres',
    'password': 'T3l3amaz0na5'  */
};

const db = pgp(databaseConfig);

module.exports = db;