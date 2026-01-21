const sequelize = require('./config/database');
const Category = require('./models/category');
const SubCategory = require('./models/sub_category');
const Establishment = require('./models/establishment');
const Banner = require('./models/banner');
const User = require('./models/user');
const Rol = require('./models/rol');

const testORM = async () => {
    try {
        await sequelize.authenticate();
        console.log('✅ Connection has been established successfully.');

        // Syncing database (Creates tables if they don't exist)
        console.log('Syncing database...');
        await sequelize.sync();

        // Create a Category
        // const cat = await Category.create({ name: 'Test Category', description: 'Test Desc', icon: 'test.png' });
        // console.log('✅ Created Category:', cat.toJSON());

        // List Categories
        const categories = await Category.findAll();
        console.log(`✅ Found ${categories.length} categories.`);

        // List Establishment
        const establishments = await Establishment.findAll();
        console.log(`✅ Found ${establishments.length} establishments.`);
        if (establishments.length > 0) {
            const e = establishments[0];
            console.log('Establishment Sample:', e.toJSON());
            if (e.rating !== undefined) console.log('✅ Establishment has rating field');
            if (e.website !== undefined) console.log('✅ Establishment has website field');
        }

        // List Users
        const users = await User.findAll();
        console.log(`✅ Found ${users.length} users.`);

        // List Roles
        const roles = await Rol.findAll();
        console.log(`✅ Found ${roles.length} roles.`);

        process.exit(0);

    } catch (error) {
        console.error('❌ Unable to connect to the database:', error);
        process.exit(1);
    }
};

testORM();
