const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const bcrypt = require('bcrypt');
const Rol = require('./rol');

class User extends Model {
    static async findByEmail(email) {
        return User.findOne({
            where: { email },
            include: [{
                model: Rol,
                as: 'roles',
                attributes: ['id', 'name', 'image', 'route'],
                through: { attributes: [] }
            }]
        });
    }

    static async findByUserId(id) {
        return User.findByPk(id, {
            include: [{
                model: Rol,
                as: 'roles',
                attributes: ['id', 'name', 'image', 'route'],
                through: { attributes: [] }
            }]
        });
    }

    static async Obtenercedula(cedula) {
        return User.findOne({
            where: { cedula },
            include: [{
                model: Rol,
                as: 'roles',
                attributes: ['id', 'name', 'image', 'route'],
                through: { attributes: [] }
            }]
        });
    }

    static async ObtenerEmail(email) {
        return User.findByEmail(email);
    }

    static async Obtenerphone(phone) {
        return User.findOne({
            where: { phone },
            include: [{
                model: Rol,
                as: 'roles',
                attributes: ['id', 'name', 'image', 'route'],
                through: { attributes: [] }
            }]
        });
    }

    static isPasswordMatched(password, hash) {
        return bcrypt.compareSync(password, hash);
    }

    static async updateToken(id, token) {
        return User.update({ session_token: token }, { where: { id } });
    }

    static async updateNotificationToken(id, token) {
        return User.update({ notification_token: token }, { where: { id } });
    }
}

User.init({
    id: {
        type: DataTypes.BIGINT,
        primaryKey: true,
        autoIncrement: true
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    lastname: {
        type: DataTypes.STRING,
        allowNull: false
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    cedula: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    },
    session_token: {
        type: DataTypes.STRING,
        allowNull: true
    },
    notification_token: {
        type: DataTypes.STRING,
        allowNull: true
    }
}, {
    sequelize,
    modelName: 'User',
    tableName: 'users',
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    hooks: {
        beforeSave: async (user) => {
            if (user.changed('password')) {
                user.password = await bcrypt.hash(user.password, 10);
            }
        }
    }
});

// Many-to-Many Relationship
User.belongsToMany(Rol, {
    through: 'user_has_roles',
    foreignKey: 'id_user',
    otherKey: 'id_rol',
    as: 'roles'
});
Rol.belongsToMany(User, {
    through: 'user_has_roles',
    foreignKey: 'id_rol',
    otherKey: 'id_user',
    as: 'users'
});

module.exports = User;