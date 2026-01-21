const sequelize = require('./config/database');
const Category = require('./models/category');
const SubCategory = require('./models/sub_category');
const Product = require('./models/product');
const Banner = require('./models/banner');

const seed = async () => {
    try {
        await sequelize.authenticate();
        console.log('✅ Conectado a la BD.');

        // Sincronizar (force: true borra todo y recrea tablas)
        console.log('🔄 Reiniciando base de datos...');
        await sequelize.sync({ force: true });

        // --- Categories ---
        console.log('🌱 Sembrando Categorias...');
        const categoriesData = [
            { name: 'Alimentos y Bebidas', description: 'Restaurantes y comida', icon: 'restaurantv' }, // ID 1
            { name: 'Alojamientos', description: 'Hoteles y hostales', icon: 'hotel' }, // ID 2
            { name: 'Atractivos Culturales', description: 'Museos y cultura', icon: 'museum' }, // ID 3
            { name: 'Esparcimientos', description: 'Parques y diversión', icon: 'park' }, // ID 4
            { name: 'Compras', description: 'Centros comerciales', icon: 'shopping_bag' }, // ID 5
            { name: 'Transportes', description: 'Buses y taxis', icon: 'directions_bus' }, // ID 6
            { name: 'Rutas', description: 'Rutas turísticas', icon: 'map' }, // ID 7
            { name: 'Directorio', description: 'Números importantes', icon: 'contact_phone' }, // ID 8
        ];
        // Insertamos y guardamos referencias para subcategorias
        const cats = await Category.bulkCreate(categoriesData, { returning: true });

        // --- SubCategories ---
        console.log('🌱 Sembrando SubCategorias...');
        const subCatsData = [
            // Alimentos (ID 1)
            { name: 'Restaurantes', description: 'Comida variada', id_category: cats[0].id }, // ID 1
            { name: 'Comida Rápida', description: 'Hamburguesas y más', id_category: cats[0].id },
            { name: 'Asaderos', description: 'Pollos y carnes', id_category: cats[0].id },
            { name: 'Bares', description: 'Bebidas y diversión', id_category: cats[0].id },
            // Alojamientos (ID 2)
            { name: 'Hoteles', description: 'Alojamiento cómodo', id_category: cats[1].id }, // ID 5
            { name: 'Moteles', description: 'Alojamiento de paso', id_category: cats[1].id },
            { name: 'Hostales', description: 'Alojamiento económico', id_category: cats[1].id },
            { name: 'Airbnb', description: 'Casas y departamentos', id_category: cats[1].id },
            // Culturales (ID 3)
            { name: 'Museos', description: 'Historia y arte', id_category: cats[2].id }, // ID 9
            { name: 'Monumentos', description: 'Sitios históricos', id_category: cats[2].id },
            // Esparcimiento (ID 4)
            { name: 'Parques', description: 'Aire libre', id_category: cats[3].id }, // ID 11
            { name: 'Discotecas', description: 'Vida nocturna', id_category: cats[3].id },
        ];
        const subCats = await SubCategory.bulkCreate(subCatsData, { returning: true });

        // --- Banners ---
        console.log('🌱 Sembrando Banners...');
        await Banner.bulkCreate([
            { title: 'Festival Gastronómico', image: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=1000&q=80' },
            { title: 'Ruta del Río', image: 'https://images.unsplash.com/photo-1449034446853-66c86144b0ad?auto=format&fit=crop&w=1000&q=80' },
            { title: 'Hoteles de Lujo', image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=1000&q=80' }
        ]);

        // --- Establishments (Products) ---
        console.log('🌱 Sembrando Establecimientos...');
        const products = [];

        for (let i = 0; i < 25; i++) {
            let catIndex = 0; // Alimentos
            let subCatIndex = 0; // Restaurantes
            let name = `Restaurante El Buen Sabor ${i + 1}`;
            let image = 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=800&q=60';

            if (i >= 5 && i < 10) {
                catIndex = 1; // Hotel
                subCatIndex = 4; // Hoteles (en el array subCatsData es index 4)
                name = `Hotel Plaza ${i + 1}`;
                image = 'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=800&q=60';
            } else if (i >= 10 && i < 15) {
                catIndex = 2; // Cultura
                subCatIndex = 8; // Museos
                name = `Museo de la Ciudad ${i + 1}`;
                image = 'https://images.unsplash.com/photo-1566127444979-b3d2b654e3d7?auto=format&fit=crop&w=800&q=60';
            } else if (i >= 15 && i < 20) {
                catIndex = 3; // Parque
                subCatIndex = 10; // Parques
                name = `Parque Central ${i + 1}`;
                image = 'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?auto=format&fit=crop&w=800&q=60';
            } else if (i >= 20) {
                catIndex = 4; // Compras
                subCatIndex = 0; // (Hack: asignamos restaurante xq no creamos subcat compras) -> Le asignamos null o creamos una.
                // Usemos null para probar
                name = `Centro Comercial Quevedo ${i + 1}`;
                image = 'https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=800&q=60';
            }

            // Mapeo seguro de subcategoria
            let subCatId = null;
            if (subCatIndex < subCats.length && i < 20) {
                subCatId = subCats[subCatIndex].id;
            }

            products.push({
                name: name,
                description: 'Un lugar increíble para disfrutar con familia y amigos.',
                price: (i + 1) * 5.50,
                image1: image,
                image2: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=60',
                image3: 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=800&q=60',
                address: `Calle ${i}, Quevedo, Ecuador`,
                phone: `099123456${i}`,
                whatsapp: `59399123456${i}`,
                location: `${-1.0286 + (i * 0.001)},${-79.4635 + (i * 0.001)}`, // Lat,Lng
                rating: 4.0 + (i % 5) * 0.2,
                website: 'https://ejemplo.com',
                id_category: cats[catIndex].id,
                id_sub_category: subCatId
            });
        }

        await Product.bulkCreate(products);
        console.log('✅ Seeding completado exitosamente.');
        process.exit(0);

    } catch (error) {
        console.error('❌ Error en seeding:', error);
        process.exit(1);
    }
};

seed();
