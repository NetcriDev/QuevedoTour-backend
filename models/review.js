const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Establishment = require('./establishment');
const User = require('./user');

class Review extends Model { }

Review.init({
    id: {
        type: DataTypes.BIGINT,
        primaryKey: true,
        autoIncrement: true
    },
    id_establishment: {
        type: DataTypes.BIGINT,
        allowNull: false,
        references: {
            model: 'establishments',
            key: 'id'
        }
    },
    id_user: {
        type: DataTypes.BIGINT,
        allowNull: false,
        references: {
            model: 'users',
            key: 'id'
        }
    },
    rating: {
        type: DataTypes.DECIMAL(3, 1),
        allowNull: false,
        validate: {
            min: 0,
            max: 5
        }
    },
    comment: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    images: {
        type: DataTypes.JSON, // For storing array of URLs
        allowNull: true
    }
}, {
    sequelize,
    modelName: 'Review',
    tableName: 'reviews',
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at'
});

// Relaciones
Establishment.hasMany(Review, { foreignKey: 'id_establishment', as: 'reviews' });
Review.belongsTo(Establishment, { foreignKey: 'id_establishment' });

User.hasMany(Review, { foreignKey: 'id_user', as: 'reviews' });
Review.belongsTo(User, { foreignKey: 'id_user' });

module.exports = Review;
