const sequelize = require('./config/database');
const Category = require('./models/category');
const SubCategory = require('./models/sub_category');
const Establishment = require('./models/establishment');
const Banner = require('./models/banner');
const User = require('./models/user');
const Rol = require('./models/rol');

const seed = async () => {
    try {
        await sequelize.authenticate();
        console.log('✅ Conectado a la BD.');

        // Sincronizar (force: true borra todo y recrea tablas)
        console.log('🔄 Reiniciando base de datos...');
        await sequelize.sync({ force: true });

        // --- Roles ---
        console.log('🌱 Sembrando Roles...');
        const rolesData = [
            { name: 'CLIENTE', route: 'client/home' },
            { name: 'ADMIN', route: 'admin/home' }, // Panel Administrativo
            { name: 'ESTABLECIMIENTO', route: 'establishment/home' }
        ];
        const roles = await Rol.bulkCreate(rolesData);
        const adminRol = roles.find(r => r.name === 'ADMIN');
        const establishmentRol = roles.find(r => r.name === 'ESTABLECIMIENTO');

        // --- Admin User ---
        console.log('🌱 Sembrando Usuario Admin...');
        const adminUser = await User.create({
            email: 'admin@quevedo.com',
            name: 'Admin',
            lastname: 'Tour',
            phone: '0999999999',
            cedula: '1234567890',
            password: 'admin' // Will be hashed by hook
        });
        await adminUser.addRoles(adminRol);

        // --- Categories ---
        console.log('🌱 Sembrando Categorias...');
        const categoriesData = [
            { name: 'Alimentos y Bebidas', description: 'Restaurantes y comida', icon: 'restaurantv' },
            { name: 'Alojamientos', description: 'Hoteles y hostales', icon: 'hotel' },
            { name: 'Atractivos Culturales', description: 'Museos y cultura', icon: 'museum' },
            { name: 'Esparcimientos', description: 'Parques y diversión', icon: 'park' },
            { name: 'Compras', description: 'Centros comerciales', icon: 'shopping_bag' },
            { name: 'Transportes', description: 'Buses y taxis', icon: 'directions_bus' },
            { name: 'Rutas', description: 'Rutas turísticas', icon: 'map' },
            { name: 'Directorio', description: 'Números importantes', icon: 'contact_phone' },
        ];
        const cats = await Category.bulkCreate(categoriesData, { returning: true });

        // --- SubCategories ---
        console.log('🌱 Sembrando SubCategorias...');
        const subCatsData = [
            // Alimentos y Bebidas (cats[0])
            { name: 'Restaurantes', description: 'Comida variada', id_category: cats[0].id },
            { name: 'Comida Rápida', description: 'Hamburguesas y más', id_category: cats[0].id },
            { name: 'Chifas', description: 'Comida china', id_category: cats[0].id },
            { name: 'Cafeterias', description: 'Café y postres', id_category: cats[0].id },
            { name: 'Mariscos', description: 'Frutos del mar', id_category: cats[0].id },
            { name: 'Asaderos', description: 'Carnes y parrillas', id_category: cats[0].id },
            { name: 'Helados', description: 'Heladerías y dulces', id_category: cats[0].id },
            { name: 'Bares', description: 'Bebidas y diversión', id_category: cats[0].id },

            // Alojamientos (cats[1])
            { name: 'Hoteles', description: 'Alojamiento cómodo', id_category: cats[1].id },
            { name: 'Hostales', description: 'Alojamiento económico', id_category: cats[1].id },

            // Atractivos Culturales (cats[2])
            { name: 'Museos', description: 'Historia y arte', id_category: cats[2].id },
            { name: 'Monumentos', description: 'Sitios históricos', id_category: cats[2].id },
            { name: 'Iglesias', description: 'Arquitectura religiosa', id_category: cats[2].id },
            { name: 'Festividades', description: 'Tradiciones y eventos', id_category: cats[2].id },

            // Esparcimientos (cats[3])
            { name: 'Parques', description: 'Espacios verdes y recreativos', id_category: cats[3].id },
            { name: 'Juegos Infantiles', description: 'Diversión para niños', id_category: cats[3].id },
            { name: 'Deportes de Aventura', description: 'Actividades al aire libre', id_category: cats[3].id },
            { name: 'Deportes Extremos', description: 'Adrenalina y acción', id_category: cats[3].id },
            { name: 'Discotecas', description: 'Vida nocturna y baile', id_category: cats[3].id },
            { name: 'Gimnasios', description: 'Salud y bienestar', id_category: cats[3].id },
            { name: 'Relajación', description: 'Spas y masajes', id_category: cats[3].id },

            // Compras (cats[4])
            { name: 'Centros Comerciales', description: 'Tiendas y servicios', id_category: cats[4].id },

            // Transportes (cats[5])
            { name: 'Interprovinciales', description: 'Viajes a otras provincias', id_category: cats[5].id },

            // Rutas (cats[6])
            { name: 'Ruta del Rio', description: 'Atractivos junto al río', id_category: cats[6].id },

            // Directorio (cats[7])
            { name: 'Agencias de Viaje', description: 'Asesoría y tours', id_category: cats[7].id },
        ];
        const subCats = await SubCategory.bulkCreate(subCatsData, { returning: true });

        // --- Banners ---
        console.log('🌱 Sembrando Banners...');
        await Banner.bulkCreate([
            { title: 'Festival Gastronómico', image: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=1000&q=80' },
            { title: 'Ruta del Río', image: 'https://images.unsplash.com/photo-1449034446853-66c86144b0ad?auto=format&fit=crop&w=1000&q=80' },
            { title: 'Hoteles de Lujo', image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=1000&q=80' }
        ]);

        console.log('✅ Seeding completado exitosamente.');
        process.exit(0);

    } catch (error) {
        console.error('❌ Error en seeding:', error);
        process.exit(1);
    }
};

seed();
