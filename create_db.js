const { Client } = require('pg');

// Configuración para conectar a la base de datos 'postgres' por defecto
// Usamos las mismas credenciales que configuraste en database.js
const config = {
    user: process.env.DB_USER || 'postgres',
    password: process.env.DB_PASS || '1234',
    host: process.env.DB_HOST || 'localhost',
    port: 5432,
    database: 'postgres' // Conectamos a la BD del sistema para poder crear la nuestra
};

const createDb = async () => {
    const client = new Client(config);
    const targetDbName = process.env.DB_NAME || 'db-quevedo-tour';

    try {
        await client.connect();

        // Verificar si existe
        const res = await client.query(`SELECT 1 FROM pg_database WHERE datname = '${targetDbName}'`);

        if (res.rowCount === 0) {
            console.log(`La base de datos '${targetDbName}' no existe. Creando...`);
            await client.query(`CREATE DATABASE "${targetDbName}"`);
            console.log(`✅ Base de datos '${targetDbName}' creada exitosamente.`);
        } else {
            console.log(`ℹ️ La base de datos '${targetDbName}' ya existe.`);
        }

    } catch (err) {
        console.error('❌ Error al crear la base de datos:', err);
        console.error('Verifica que tu contraseña sea correcta en la variable config de este script.');
    } finally {
        await client.end();
    }
};

createDb();
