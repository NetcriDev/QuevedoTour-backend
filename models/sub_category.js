const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Category = require('./category');

class SubCategory extends Model { }

SubCategory.init({
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
    id_category: {
        type: DataTypes.BIGINT,
        allowNull: false,
        references: {
            model: 'categories',
            key: 'id'
        }
    }
}, {
    sequelize,
    modelName: 'SubCategory',
    tableName: 'sub_categories',
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at'
});

// Definir relación
Category.hasMany(SubCategory, { foreignKey: 'id_category' });
SubCategory.belongsTo(Category, { foreignKey: 'id_category' });

module.exports = SubCategory;
