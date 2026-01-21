
const sequelize = require('./config/database');
const Establishment = require('./models/establishment');
const Category = require('./models/category');

const verify = async () => {
    try {
        await sequelize.authenticate();

        const count = await Establishment.count();
        console.log(`📊 Total establecimientos en la BD: ${count}`);

        const categories = await Category.findAll();

        console.log('\nDistribución por categoría:');
        for (const cat of categories) {
            const catCount = await Establishment.count({ where: { id_category: cat.id } });
            console.log(`- ${cat.name}: ${catCount}`);
        }

        process.exit(0);
    } catch (error) {
        console.error('❌ Error en verificación:', error);
        process.exit(1);
    }
};

verify();
