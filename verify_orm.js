const sequelize = require('./config/database');
const Category = require('./models/category');
const SubCategory = require('./models/sub_category');
const Product = require('./models/product');
const Banner = require('./models/banner');

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

        // List Products
        const products = await Product.findAll();
        console.log(`✅ Found ${products.length} products.`);
        if (products.length > 0) {
            const p = products[0];
            console.log('Product Sample:', p.toJSON());
            if (p.rating !== undefined) console.log('✅ Product has rating field');
            if (p.website !== undefined) console.log('✅ Product has website field');
        }

        process.exit(0);

    } catch (error) {
        console.error('❌ Unable to connect to the database:', error);
        process.exit(1);
    }
};

testORM();
