const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class Category extends Model { }

Category.init({
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
    icon: {
        type: DataTypes.STRING,
        allowNull: true
    }
}, {
    sequelize,
    modelName: 'Category',
    tableName: 'categories',
    timestamps: true, // adds created_at, updated_at
    createdAt: 'created_at',
    updatedAt: 'updated_at'
});

module.exports = Category;