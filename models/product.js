const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Category = require('./category');
const SubCategory = require('./sub_category');

class Product extends Model { }

Product.init({
    id: {
        type: DataTypes.BIGINT,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    price: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: true // Changed to allow null as not all establishments have price
    },
    image1: {
        type: DataTypes.STRING,
        allowNull: true
    },
    image2: {
        type: DataTypes.STRING,
        allowNull: true
    },
    image3: {
        type: DataTypes.STRING,
        allowNull: true
    },
    address: {
        type: DataTypes.STRING,
        allowNull: true
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: true
    },
    whatsapp: {
        type: DataTypes.STRING,
        allowNull: true
    },
    location: {
        type: DataTypes.STRING, // Can store as "lat,lng" or use PostGIS later
        allowNull: true
    },
    rating: {
        type: DataTypes.FLOAT,
        defaultValue: 4.5
    },
    website: {
        type: DataTypes.STRING,
        allowNull: true
    },
    id_category: {
        type: DataTypes.BIGINT,
        allowNull: false,
        references: {
            model: 'categories',
            key: 'id'
        }
    },
    id_sub_category: {
        type: DataTypes.BIGINT,
        allowNull: true, // Allow null if not strictly required
        references: {
            model: 'sub_categories',
            key: 'id'
        }
    }
}, {
    sequelize,
    modelName: 'Product',
    tableName: 'products',
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at'
});

// Relaciones
Category.hasMany(Product, { foreignKey: 'id_category' });
Product.belongsTo(Category, { foreignKey: 'id_category' });

SubCategory.hasMany(Product, { foreignKey: 'id_sub_category' });
Product.belongsTo(SubCategory, { foreignKey: 'id_sub_category' });

module.exports = Product;