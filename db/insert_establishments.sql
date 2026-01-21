
-- HOTEL SAN ANDRÉS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL SAN ANDRÉS', 'Hotel Hotel San Andrés Inn, ubicado en el corazón y casco comercial de la ciudad de Quevedo, nuestro establecimiento se ha convertido en el destino preferido por empresarios, corporativos y turistas nacionales e internacionales.', 'Avenida 7 de Octubre y Décima Primera 120305', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fsan%20andres.gif?alt=media&token=36c48e73-5a7c-4e79-a17d-7cc3251d93b1', '052762610', 'https://wa.link/pyt54x', 'https://goo.gl/maps/mTe5mj8HQUtv2FyY6', 4.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL SAN ANDRÉS');


-- HOTEL PALMAR DEL SOL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL PALMAR DEL SOL', 'Hotel Palmar del Sol cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable. Este establecimeinto cuenta con todos los protocolos de bioseguridad. hoteldelso@gmail.com', 'VÍA A EL EMPALME KM 5.', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fpalmar%20del%20sol.gif?alt=media&token=a30c88f6-d947-49de-84c1-3962aeab218c', '05275880 - 0982867551', 'https://walink.co/dd7032', 'https://goo.gl/maps/42jif6VkNUXFmZ4P6', 3.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL PALMAR DEL SOL');


-- HOTEL DEL RÍO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL DEL RÍO', 'Hotel del Río es un sitio acogedor ubicado a la orilla del río Quevedo, a solo 3 minutos del centro de la ciudad. Es el lugar idoneo para vivir la naturaleza en un ambiente tranquilo, familiar y confortable.  hoteldelrio_ec@hotmail.com', 'Av. Jaime Roldós Calle 23ava. #1123 y Malecón', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fdel%20rio.gif?alt=media&token=35d49591-42f4-444b-9256-76cc0a2f0495', '0998724500', 'https://walink.co/133459', 'https://goo.gl/maps/2NGsyGhdCBYcH6pi7', 3.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL DEL RÍO');


-- HOTEL COSTA DEL SOL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL COSTA DEL SOL', 'Hotel Costa del Sol cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable. Este establecimeinto cuenta con todos los protocolos de bioseguridad. costadelsol339@hotmail.com', 'VIA AL EMPALME, QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fcosta%20del%20sol.gif?alt=media&token=2f8fc0ca-0cc0-4c10-97eb-28d02a3c2145', '052783672 - 0980029973', 'https://walink.co/66e567', 'https://goo.gl/maps/eZ5FB4vsQuv9Q7CB7', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL COSTA DEL SOL');


-- BRAVO GRAND HOTEL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'BRAVO GRAND HOTEL', 'Bravo Grand Hotel cuenta con servicios de parqueo, habitaciones confortables con camas de 2 plazas, TV LED, aire acondicionado, internet inalámbrico, cafetería, personal siempre dispuesto a satisfacer sus mas exigentes expectativas por lo que estamos seguros de que vivirá una experiencia inolvidable, y será atendido con la calidez del típico Ecuatoriano Quevedeño.', 'QUEVEDO - ECUADOR', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fbravo%20hotel.gif?alt=media&token=9c2c86eb-b723-41d3-9711-a1ed26e8d788', '0994106063', 'https://walink.co/285889', 'https://goo.gl/maps/1RtyT42M4xmJoVX18', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'BRAVO GRAND HOTEL');


-- HOTEL EJECUTIVO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL EJECUTIVO', 'Hotel Ejecutivo ofrece la entrega de comida y bebidas a la habitación. La recepción está abierta todo el día. Territorio del hotel dispone de su propia plaza de parking. Los empleados del alojamiento dominan español. En el lugar de alojamiento aceptan solo dinero en efectivo.', 'CALLE  7 DE OCTUBRE Y CUARTA # 214', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fejecutivo.gif?alt=media&token=911f8ace-5c38-4668-87e0-1a04c82df55d', '0987223745', 'https://walink.co/f73a0e', '', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL EJECUTIVO');


-- HOTEL TAMPA BAY
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL TAMPA BAY', 'El Hotel Tampa Bay dispone de habitaciones para el trabajo, el estudio y el ocio hay internet. En la terraza se puede descansar después de una cena o un día tenso. Se proporciona una plaza de parking para los huéspedes que han llegado en su propio coche. hoteltampabay@hotmail.com', 'AV 7 de Octubre 825 Entre Octava y Novena', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Ftampa%20bay.gif?alt=media&token=ba0b1843-0d04-4d96-8e6a-dd6527905d25', '052763930 - 0994008870', 'https://walink.co/e29b7d', 'https://goo.gl/maps/hHt4oCRzJUCFJSSM9', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL TAMPA BAY');


-- HOTEL JADE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL JADE', 'Hotel Restaurante Jade es una empresa del sector Hoteles Los Ríos con oficinas en la ciudad de Quevedo, provincia de LOS RIOS chifajade@hotmail.com', 'Calle Principal S/N Carretero - Vía a San Carlos KM.1', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fjade.gif?alt=media&token=3df1af90-64dc-45d6-8b2d-8af38ab4cc70', '2770501 - 0997518662', 'https://walink.co/5b1124', '', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL JADE');


-- HOTEL D'' BARROS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL D'' BARROS', 'Hotel D Barros cuenta con habitaciones sencillas, dobles, triples, matrimoniales, suites matrimoniales,con a/c, ascensor,agua caliente,tv/c, wifi, garaje incluido en el precio del hotel, seguridad privada, salones de conferencias  orlandobarro27@hotmail.com', 'AV. 7 de Octubre S/N Y 12VA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fd%20barros.gif?alt=media&token=861e8acd-6e6b-4498-9b99-f05d2c582cce', '0969966679', 'https://walink.co/039c76', 'https://goo.gl/maps/sLzJP6V5XP8fGfmn9', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL D'' BARROS');


-- HOTEL PRESIDENTE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL PRESIDENTE', 'Hotel Presidente cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable.  Este establecimeinto cuenta con todos los protocolos de bioseguridad.', 'Cdla. Jardines del Este - Calle Principal S/N  ( Diagonal a Uniandes)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fpresident.gif?alt=media&token=b82d6e4a-5cea-4ac0-8812-d7f4e1a83a0f', '0999606566', 'https://walink.co/ac115a', '', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL PRESIDENTE');


-- HOTEL SANTANDER
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL SANTANDER', 'Hotel Santander dispone de un servicio de estacionamiento. Las instalaciones cuentan con servicios de limpieza en seco.  Los huéspedes pueden encontrar una gran selección de bebidas alcohólicas y no alcohólicas en el bar del hotel.  santanderhotelboutique@gmail.com', 'AV. June Guzmán entre Decima Cuarta y AV. 7 Octubre', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fsantander.gif?alt=media&token=a24b639c-2f1b-4111-aa31-aa7203859d84', '052755234', 'https://walink.co/7c984b', 'https://goo.gl/maps/86gJdrXwF896z2fx7', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL SANTANDER');


-- HOTEL PARIS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL PARIS', 'Hotel París cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable.  Este establecimeinto cuenta con todos los protocolos de bioseguridad. hotelparisquev@gmail.com', 'Calle Septima, Quevedo - Ecuador', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fpar%C3%ADs.gif?alt=media&token=1b644391-3a65-495b-bc1b-742e87e4d183', '052760683', '', 'https://goo.gl/maps/D3UM1o7cPJm5kLFU9', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL PARIS');


-- HOTEL CRESPOTEL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOTEL CRESPOTEL', 'Hotel Crespotel cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable. Este establecimeinto cuenta con todos los protocolos de bioseguridad. crespotel@gmail.com', 'Cdla. San José, 19º S/N y AV. Jaime Roldós Aguilera', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hoteles%2Fhs%20crespotel.gif?alt=media&token=1167f879-77e9-4a68-a149-44df064eaced', '099449120', 'https://walink.co/17df1d', 'https://goo.gl/maps/zXdTRN1wMHnXoPUp8', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hoteles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOTEL CRESPOTEL');


-- AROMA DE CACAO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'AROMA DE CACAO', 'El HOSTAL AROMA DE CACAO ofrece alojamiento en Quevedo. Este hostal de 3 estrellas alberga un restaurante y ofrece habitaciones con aire acondicionado, conexión Wi-Fi gratuita y baño privado. Todas las mañanas, el Hostal Aroma de Cacao sirve un desayuno continental y americano. hosteria_aromadecacao@hotmail.com', 'Calle Bolivar #1030 entre la Décima y Décima Primera', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hostales%2Fhs%20aroma%20de%20cacao.gif?alt=media&token=61cbabca-c4fe-4034-a2fb-69a04eefc31c', '0982620015', 'https://walink.co/4c198c', 'https://goo.gl/maps/WkJ4wLJfZSvLw8Hu8', 3.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hostales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'AROMA DE CACAO');


-- HOSTAL SEVILLA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'HOSTAL SEVILLA', 'Hostal Sevilla cuenta con una sala común que está equipada con TV. Para los propietarios de coches hay una plaza de parking. Comunique de antemano que tiene planes de venir con us mascota. Aquí puede hacer una serie de ejercicios para cuidar el cuerpo bajo la guía de un instructor en el gimnasio.  luissevilla@hotmail.com', 'Calle Novena y Av. June Guzmán (Esquina)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hostales%2FSevilla.gif?alt=media&token=2ff74dc8-9069-4467-af52-db6f6e51753f', ' 0991542564', 'https://walink.co/11175d', 'https://g.page/hostalsevilla?share', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hostales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'HOSTAL SEVILLA');


-- RANCHO GALAXI
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RANCHO GALAXI', 'Hostal Rancho Galaxi cuenta con amplias y modernas habitaciones, servicio de calidad con calidez que harán de su estancia una experiencia inolvidable. Este establecimeinto cuenta con todos los protocolos de bioseguridad.  daniluis17@gmail.com', 'Principal S/N  KM. 3 Vía Valencia', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Hostales%2Fhs%20rancho.gif?alt=media&token=fbcd42ce-777c-46c2-a484-50bcb2953a17', '052780562', 'https://walink.co/71ee66', 'https://g.page/Hostal-Rancho-Galaxie?share', 2.0, 2, 
(SELECT id FROM sub_categories WHERE name = 'Hostales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RANCHO GALAXI');


-- VIKINGO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VIKINGO', 'Oferta de menú en almuerzos y platos a la carta.', ' RUTA DEL RÍO - LOCAL 13', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fvikingo.gif?alt=media&token=8e334486-c86b-4821-b291-1b3acb64844c', '0959838524', 'https://walink.co/e04a91', 'https://maps.app.goo.gl/eAn9Sw8JasQvKswo9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VIKINGO');


-- LAS DELICIA DEL OLIMPO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LAS DELICIA DEL OLIMPO', 'Oferta de menú en almuerzos y platos a la carta.  sergio_antonio_1713@hotmail.com', 'AV. WALTER ANDRADE FAJARDO Y GUSTAVO CHONQUI ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Folimpo.gif?alt=media&token=5a0adb7b-7c2f-4d61-83ee-45e6bebfa0b2', '0959654099', 'https://walink.co/7eedcd', 'https://goo.gl/maps/7wWxekWBCVhDn4DZ7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LAS DELICIA DEL OLIMPO');


-- D'' TATY RESTO BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'D'' TATY RESTO BAR', 'Oferta de menú en almuerzos y platos a la carta.', ' RUTA DEL RÍO - LOCAL 24', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fdtaty.gif?alt=media&token=46c714c8-c2a1-4989-ac5a-edd14ee6e35c', '096 918 5006', 'https://walink.co/88dee9', 'https://goo.gl/maps/igbTrFU7fYkkB9Gd6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'D'' TATY RESTO BAR');


-- SANTORINI
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'SANTORINI', 'Oferta de menú en almuerzos y platos a la carta.', ' Cdla el Guayacán - II ETAPA - CALLE PRINCIPAL SEGUNDA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fsantorini.gif?alt=media&token=c821fcd7-9e9b-43c8-be61-2e7609c257f9', '098 921 9597', 'https://walink.co/460e87', 'https://goo.gl/maps/Bc5HmBCcLawP2DGz7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'SANTORINI');


-- D''LIZ RESTO BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'D''LIZ RESTO BAR', 'Oferta de menú en almuerzos y platos a la carta.', ' RUTA DEL RÍO - LOCAL 48', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fdliz.gif?alt=media&token=fae84dcc-83e0-41cb-a206-23e9e667d0b4', '0959838524', 'https://walink.co/ae268e', 'https://maps.app.goo.gl/tfbwyfsS3GCxLfmq7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'D''LIZ RESTO BAR');


-- BRASAS & LEÑAS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'BRASAS & LEÑAS', 'Oferta de menú en almuerzos y platos a la carta.', ' RUTA DEL RÍO - LOCAL 47', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fbrasa_lenas.gif?alt=media&token=8995dfef-c852-437e-9516-0819e0f3a64c', '0982948015', 'https://walink.co/95e73f', 'https://goo.gl/maps/xV7cv88mjwt9uaFo9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'BRASAS & LEÑAS');


-- POLLOS A LA BRASA VIEJO FABI Nº 1
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'POLLOS A LA BRASA VIEJO FABI Nº 1', 'Oferta de menú en almuerzos y platos a la carta. monica.robles.garcia@hotmail.com', 'JUAN MONTALVO S/N Y JOSE MEJIA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fviejo_fabi.gif?alt=media&token=09154b87-9913-41d6-a580-9cf3acd24e72', '0986395580', 'https://walink.co/f6a8ac', 'https://goo.gl/maps/UnN6TZvKnGputRPZ7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'POLLOS A LA BRASA VIEJO FABI Nº 1');


-- AJÍ DE MESA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'AJÍ DE MESA', 'Oferta de menú en almuerzos y platos a la carta.', 'CALLE C ENTRADA PRINCIPAL A LA UTB', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Faji_mesa.gif?alt=media&token=a5e2b652-311b-4d5e-8fbb-334eecbd0638', '0959627248', 'https://walink.co/19f6a5', 'https://goo.gl/maps/bURMgCz7KYDoTqiB8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'AJÍ DE MESA');


-- PIMIENTA DULCE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PIMIENTA DULCE', 'Oferta de menú en almuerzos y platos a la carta.', 'BOLIVAR S/N Y DECIMA SEGUNDA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fpimienta_dulce.gif?alt=media&token=f2dfb13a-45ca-42e6-bb8e-84deda305c07', '(05) 275-2063', 'https://walink.co/3a07ec', 'https://maps.app.goo.gl/dszdb4CLapPVtKhx8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PIMIENTA DULCE');


-- RESTAURANTE TZ
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RESTAURANTE TZ', 'Oferta de menú en almuerzos y platos a la carta.', ' AV. 7 DE OCTUBRE Y DECIMA QUINTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fcevicheria_tz.gif?alt=media&token=1c1edc40-a11a-4e2f-957f-479bc5523294', '0993172837', 'https://walink.co/a8e112', 'https://goo.gl/maps/yyMehVafvFKtiQUd8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RESTAURANTE TZ');


-- D´ CARLOS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'D´ CARLOS', 'Oferta de menú en almuerzos y platos a la carta. tigrillocarlos@hotmail.com', 'CALLE DECIMA TERCERA. Y  AV. 7 DE OCTUBRE (ESQUINA)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fd_carlos.gif?alt=media&token=ab3bc7c6-f4ad-430f-8326-ef76d48e5ba6', '2750616', 'https://walink.co/a03a41', 'https://goo.gl/maps/VYHzsQzgQNg41LsL8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'D´ CARLOS');


-- MAMA SILVIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MAMA SILVIA', 'Oferta de menú en almuerzos y platos a la carta. narcisasanchez61@hotmail.com', '7 DE OCTUBRE # 206 Y LA SEGUNDA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fmama_silvia.gif?alt=media&token=206608ad-af21-444b-8d50-c6cf2ea58e00', '2752-240 - 0967784957', 'https://walink.co/dff3c6', 'https://goo.gl/maps/pmC67VvUJsbFGTaEA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MAMA SILVIA');


-- NUEVO SAN ANTONIO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'NUEVO SAN ANTONIO', 'Oferta de menú en almuerzos y platos a la carta. nuevosanantonio@hotmai.com', 'BOLIVAR Y QUINTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fsan_antonio.gif?alt=media&token=98c1a37a-bc86-45c2-8fda-a2a7885d9ed4', '0998682277', 'https://walink.co/629ac6', 'https://goo.gl/maps/wcJvZJCChBPkA72E8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'NUEVO SAN ANTONIO');


-- LA ESPAÑOLA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LA ESPAÑOLA', 'Oferta de menú en almuerzos y platos a la carta. hostalcataluna@hotmail.com', 'AV. QUITO # 305 Y LAS ACACIAS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Restaurantes%2FGifs%2Fespanola.gif?alt=media&token=2e5bd000-f298-43b4-892c-8a9ce16866a1', '0968137308', 'https://walink.co/ac4cb6', 'https://g.page/RLaespanola?share', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Restaurantes' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LA ESPAÑOLA');


-- KFC
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'KFC', 'Servicio de fast food en punto de atención y entrega a domicilio. Kfck93@kfc.com.ec', 'AV. 7 DE OCTUBRE S/N Y DECIMA TERCERA  (C.C. VICTORIA VENTURA PLAZA)', '', '0994582251', 'https://walink.co/82f3ba', 'https://goo.gl/maps/hCpE63b9qSSw1zhT6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'KFC');


-- COMIDAS DE VICTOR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'COMIDAS DE VICTOR', 'Servicio de fast food en punto de atención y entrega a domicilio. comidasdevictor@gmail.com', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO PASEO SHOPPING LOCAL C- 8 ', '', '246 MATRIZ', '', 'https://goo.gl/maps/PuBpz7XTnyiSEpu86', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'COMIDAS DE VICTOR');


-- MENESTRAS DEL NEGRO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MENESTRAS DEL NEGRO', 'Servicio de fast food en punto de atención y entrega a domicilio. m32@menestrasdelnegro.com.ec', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO - PASEO SHOPPING ', '', '0997258967', 'https://walink.co/5d6472', 'https://goo.gl/maps/PuBpz7XTnyiSEpu86', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MENESTRAS DEL NEGRO');


-- MINI GOLF
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MINI GOLF', ' Mini golf espacio de recreación familiar para la práctica deportiva del golf miniatura además de bebidas y piquéos en un ambiente acogedor.', 'RUTA DEL RÍO - LOCAL 68', '', '099 382 7504', 'https://walink.co/b221e0', 'https://goo.gl/maps/uLrjaz8CdWRKdKXQ8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MINI GOLF');


-- MOROS Y PIQUEOS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MOROS Y PIQUEOS', 'Servicio de fast food en punto de atención y entrega a domicilio. juancarlosgandara@hotmail.com', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO - PASEO SHOPPING LOCAL 4 ', '', '0967910127', 'https://walink.co/0ca5c3', 'https://goo.gl/maps/PuBpz7XTnyiSEpu86', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MOROS Y PIQUEOS');


-- GUS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'GUS', 'Servicio de fast food en punto de atención y entrega a domicilio. gusg51@gus.com.ec', 'CDLA. VENUS DEL RIO, CALLE 24 DE MAYO - PASEO SHOPPING LOCAL C- 3', '', '0997257493', 'https://walink.co/81f548', 'https://goo.gl/maps/PuBpz7XTnyiSEpu86', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'GUS');


-- COPI PIZZA COLOMBIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'COPI PIZZA COLOMBIA', 'Servicio de fast food en punto de atención y entrega a domicilio. hesnabo@hotmail.com', 'AV. 7 DE OCTUBRE SOLAR 5 Y DECIMA CUARTA', '', '0986394660', 'https://walink.co/1982ce', 'https://g.page/CopipizzaColombia?share', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'COPI PIZZA COLOMBIA');


-- THE BEST WINGS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'THE BEST WINGS', 'Servicio de fast food en punto de atención y entrega a domicilio. gusg51@gus.com.ec', 'CDLA. SAN JOSE CALLE PRINCIPAL', '', '0997257493', 'https://walink.co/da3444', 'https://maps.app.goo.gl/PPpSMTf1syaq63y68', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'THE BEST WINGS');


-- PIZZA HUT
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PIZZA HUT', 'Servicio de fast food en punto de atención y entrega a domicilio. tienda23589@pizzahut.com.ec', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO - PASEO SHOPPING QUEVEDEO', '', '056055992', 'https://walink.co/e2ae22', 'https://goo.gl/maps/wsERmVGrzFVE1zYQA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PIZZA HUT');


-- CARL’S J.R.
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CARL’S J.R.', 'Servicio de fast food en punto de atención y entrega a domicilio. carlsquevedo@elrosado.com', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO - PASEO SHOPPING QUEVEDO', '', '0990101815', 'https://walink.co/d15a3a', 'https://goo.gl/maps/sxBSH1xjuNEdZeLu5', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Comida Rápida' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CARL’S J.R.');


-- GRAN CHEF
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'GRAN CHEF', 'Servicio de alimentos y bebidas con especialidades en comida CHINA', 'RUTA DEL RÍO - LOCAL 8', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Chifas%2FGifs%2Fgran_chef.gif?alt=media&token=baa0b7f1-6277-4f96-89a7-c7264accae72', '0985685328', 'https://walink.co/50ec8d', 'https://goo.gl/maps/pBBjyDDVHcey6YUv6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Chifas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'GRAN CHEF');


-- CHIFA JADE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIFA JADE', 'Servicio de alimentos y bebidas con especialidades en comida CHINA chifajade@hotmail.com', 'CALLE PRINCIPAL S/N CARRETERO  VIA A SAN CARLOS KM.1', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Chifas%2FGifs%2Frestaurante%20de%20jade.gif?alt=media&token=c5401bf8-cc97-44e1-a896-2f77aca3f97a', '2770501 - 0997518662', 'https://walink.co/d986ca', 'https://goo.gl/maps/SAkUYq6YmfdASAqd7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Chifas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIFA JADE');


-- CHIFA MIRAFLORES
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIFA MIRAFLORES', 'Servicio de alimentos y bebidas con especialidades en comida CHINA chifamirafloresquevedo@hotmail.com', 'AV. 7 DE OCTUBRE ENTRE  DÉCIMA QUINTA Y DÉCIMA SEXTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Chifas%2FGifs%2Fmiraflores.gif?alt=media&token=d346c6a6-1a5b-4496-be3f-e84de462238a', '05275880 - 0982867551', 'https://walink.co/8e81cc', 'https://goo.gl/maps/MYe2DVUKSzLtbjCx5', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Chifas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIFA MIRAFLORES');


-- CHIFA FU HO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIFA FU HO', 'Servicio de alimentos y bebidas con especialidades en comida CHINA ', 'CALLE DECIMA OCTAVA Y  ABDON CALDERON  CDLA. SAN JOSE', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Chifas%2FGifs%2Fchifa_fugo.gif?alt=media&token=77b65a63-168a-41dd-8a6c-8a0be7341cff', '0988838803', 'https://walink.co/d8a21b', 'https://goo.gl/maps/DcMnYg1F16yBchxy6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Chifas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIFA FU HO');


-- CHIFA XING  FU
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIFA XING  FU', 'Servicio de alimentos y bebidas con especialidades en comida CHINA Kfck93@kfc.com.ec', 'AV. JAIME ROLDOS AGUILERA   Y DECIMA QUINTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Chifas%2FGifs%2Fxing_fu.gif?alt=media&token=d35411d8-4d5d-43cb-b9d5-d7466b9b57ce', '0994582251', 'https://walink.co/8f6b5c', '', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Chifas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIFA XING  FU');


-- CAFÉ & TINTO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CAFÉ & TINTO', ' Establecimiento de alimentos y bebidas con ofertas de menú variado, en gastronomía nacional e internacional.', 'RUTA DEL RÍO - LOCAL 87', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Fcafe_tinto.gif?alt=media&token=97aa06e7-8a96-4d10-b349-eef64be1332d', '0989455382', 'https://walink.co/3448da', 'https://goo.gl/maps/J4J4BzUtE1YtYg76A', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CAFÉ & TINTO');


-- TORO CAFÉ
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'TORO CAFÉ', 'Servicio de alimentos y bebidas tipo BREAKFAST torosangria@outlook.com', 'DECIMA TERCERA  S/N Y BOLIVAR', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Ftoro%20café.gif?alt=media&token=9aab030f-b4fd-41c4-85e8-7f01650206e4', '0994741649', 'https://walink.co/9dedd3', 'https://goo.gl/maps/BbrwkhCUNpes9gRB7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'TORO CAFÉ');


-- PANADERIA CALIFORNIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PANADERIA CALIFORNIA', 'Servicio de alimentos y bebidas tipo BREAKFAST localquevedo1@pancali.com.ec', ' BOLIVAR S/N Y SEPTIMA ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2F%20pan%20california%20.gif?alt=media&token=59581fd3-bcca-4d4f-aeb1-cee3a716766b', '0985597466', 'https://walink.co/85cfe5', 'https://goo.gl/maps/jW9gyiwjweDx1c8A7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PANADERIA CALIFORNIA');


-- SWEET LAND
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'SWEET LAND', 'Servicio de alimentos y bebidas tipo BREAKFAST sweetlandmatriz1@gmail.com', 'AV. 7 DE OCTUBRE S/N Y DECIMA CUARTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Fsweet%20land.gif?alt=media&token=b569abe5-b552-4df5-9937-ead050f3d43d', '0989133132', 'https://walink.co/b63ee5', 'https://goo.gl/maps/kJkZKH2NGJUiw6iU6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'SWEET LAND');


-- FANCY MINT COFFEE & CAKE SHOP
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'FANCY MINT COFFEE & CAKE SHOP', 'Servicio de alimentos y bebidas tipo BREAKFAST pattyzambrano3@hotmail.com', 'AV. 7 DE OCTUBRE, SOLAR # 2 Y CALLE DECIMA SEGUNDA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Ffancy%20mint.gif?alt=media&token=dd34152b-4829-4a83-8731-d51de15f29f2', '0987219830', 'https://walink.co/2dca1b', 'https://goo.gl/maps/TUFdHmqYnM9tZmtD7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'FANCY MINT COFFEE & CAKE SHOP');


-- SWEET LAND
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'SWEET LAND', 'Servicio de alimentos y bebidas tipo BREAKFAST sweetlandrotario@outlook.com', 'CALLE 7 DE OCTUBRE  AV. QUITO, DIAGONAL  AL PARQUE ROTARIO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Fsweet%20land.gif?alt=media&token=b569abe5-b552-4df5-9937-ead050f3d43d', '0979980338', 'https://walink.co/b63ee5', 'https://goo.gl/maps/kJkZKH2NGJUiw6iU6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'SWEET LAND');


-- AROMA CAFÉ SNACK
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'AROMA CAFÉ SNACK', 'lisbethdianita@gmail.com', 'DECIMA OCTAVA Y AV. JAIME ROLDOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Faroma%20café%20snack.gif?alt=media&token=7899d24c-e680-46ce-bf00-c8fd71e045a4', '0986498906', 'https://walink.co/95c3f3', 'https://goo.gl/maps/54VrHma423EQFB1U7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'AROMA CAFÉ SNACK');


-- CAFÉ KIMO 
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CAFÉ KIMO ', 'Servicio de alimentos y bebidas tipo BREAKFAST agleoncumba@gmail.com', 'Ave. CARLOS JULIO AROSEMENA (FRENTE AL MINISTERIO LABORAL', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Fcafé%20kimo.gif?alt=media&token=46fd9f48-b22a-4c32-acc5-5724114d9870', '098 539 6762', '', '', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CAFÉ KIMO ');


-- PANADERÍA CALIFORNIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PANADERÍA CALIFORNIA', 'Servicio de alimentos y bebidas tipo BREAKFAST pattyzambrano3@hotmail.com', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO  C.C. PASEO SHOPPING QUEVEDO LC. 1', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Cafeterias%2FGifs%2Fcalifornia%20shop.gif?alt=media&token=9fdb865c-a62f-4431-b9cb-610c5dfd17c8', '0994701582', 'https://walink.co/0e124b', 'https://goo.gl/maps/kBw8WJ586QLMimZN9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Cafeterias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PANADERÍA CALIFORNIA');


-- SPORT FISH CEVICHERIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'SPORT FISH CEVICHERIA', '  Establecimiento de alimentos y bebidas con especialidad en mariscos', ' CAMILO AREVALO Y LA I ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fsporfish.gif?alt=media&token=8f476a4c-73ab-4038-9f63-df42bc464b9e', '0959838524', 'https://walink.co/0dc61c', 'https://g.page/Sportfishec?share', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'SPORT FISH CEVICHERIA');


-- D'' RECIFE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'D'' RECIFE', ' Establecimiento de alimentos y bebidas con especialidad en mariscos', ' RUTA DEL RÍO - LOCAL 55 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Frecife.gif?alt=media&token=21e4ac0f-08b2-4c37-ae24-7411bf417d1f', '0985072336', 'https://walink.co/5f6812', 'https://maps.app.goo.gl/bYd9eRby7rVxMBFZ6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'D'' RECIFE');


-- MARISQUERÍA JUAN CAMARÓN
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MARISQUERÍA JUAN CAMARÓN', ' Establecimiento de alimentos y bebidas con especialidad en mariscos viniparedesmoreira@gmail.com', 'AV. 7 DE OCTUBRE # 1428 INTERSECCION  DECIMA CUARTA Y DECIMA QUINTA ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fjuan_camaron.gif?alt=media&token=c1df874c-42f6-4030-b18f-13bb25f41362', '0993983219', '', '', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MARISQUERÍA JUAN CAMARÓN');


-- CEVICHERIA EL CAPITÁN
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CEVICHERIA EL CAPITÁN', ' Establecimiento de alimentos y bebidas con especialidad en mariscos', 'AVENIDA JUNE GUZMÁN Y DÉCIMA ESQUINA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fcapitan.gif?alt=media&token=4b47f3a1-1201-4c2e-9947-6e8a6df0f06d', '0962753435', 'https://walink.co/c5ca85', 'https://goo.gl/maps/HosW1ri5Yc2rK98a8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CEVICHERIA EL CAPITÁN');


-- MAKO SUSHI
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MAKO SUSHI', ' Establecimiento de alimentos y bebidas con especialidad en mariscos', 'MALECÓN ELOY ALFARO Y CALLE 15 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fmako.gif?alt=media&token=26594f26-2974-4c15-ab80-cb1ac400c7e3', '0998500731', 'https://walink.co/c54829', 'https://maps.app.goo.gl/JmiFTyv65xpVDFCL9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MAKO SUSHI');


-- CEVICHERÍA PICUDO BLANCO 
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CEVICHERÍA PICUDO BLANCO ', ' Establecimiento de alimentos y bebidas con especialidad en mariscos  @picudoblancointer', 'AVENIDA 12 DE OCTUBRE Y DÉCIMA SEGUNDA ESQUINA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fpicudo_blanco.gif?alt=media&token=4dd959fe-3c52-4b83-ba20-17a709c044b0', '0991972792', '', '', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CEVICHERÍA PICUDO BLANCO ');


-- PLAYA ESCONDIDA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PLAYA ESCONDIDA', 'Establecimiento de alimentos y bebidas con especialidad en mariscos', 'CALLE SAN JOSE Y 17AVA DIAGONAL A LA POLICÍA COMUNITARIA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fplaya_escondida.gif?alt=media&token=32ed6b27-f72e-490b-86d5-f5ab91b68ef3', '0989375404', 'https://walink.co/84278d', 'https://goo.gl/maps/k4wRxKLPc4Wzu9TdA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PLAYA ESCONDIDA');


-- MARISQUERIA QUEVEREDES
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MARISQUERIA QUEVEREDES', 'Establecimiento de alimentos y bebidas con especialidad en mariscos', 'JUNE GUZMAN DE CORTEZ # 804 Y DECIMA TERCERA ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fmarisqueria_quereredes.gif?alt=media&token=5d6623d5-4200-4f81-ae52-b1ac0e8701a6', '(05) 275-3743', 'https://walink.co/783e18', 'https://goo.gl/maps/qTZrcPmuPZy3q5fY6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MARISQUERIA QUEVEREDES');


-- CEVICHERIA DEL RIO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CEVICHERIA DEL RIO', 'Establecimiento de alimentos y bebidas con especialidad en mariscos', ' MALECÓN ELOY ALFARO Y 4ta - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Mariscos%2FGifs%2Fcevicheria_delrio.gif?alt=media&token=72c6d777-333e-4890-bb9d-2de9a6c9826f', '0968742111', 'https://walink.co/ceb808', 'https://maps.app.goo.gl/YPE5sufrJeJmXrfV6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Mariscos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CEVICHERIA DEL RIO');


-- KANHA BISTRÓ
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'KANHA BISTRÓ', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', ' RUTA DEL RÍO - LOCAL 61', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Fkanha_bistro.gif?alt=media&token=1e5326a2-dec8-45ca-b72c-fd015cf05e8e', '0959838524', 'https://walink.co/e6b56d', 'https://goo.gl/maps/ECTpZ5sV39CxDsna7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'KANHA BISTRÓ');


-- JUAN RES
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'JUAN RES', ' Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', 'Av. JAIME RÓLDOS Y 18va', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Fjuan_res.gif?alt=media&token=3bf9c1bb-141a-437d-b793-9a1353a2d8b3', '095 950 4688', 'https://walink.co/de9a54', 'https://goo.gl/maps/31BEyF3H7u5ZSw5T9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'JUAN RES');


-- PESCA LA RES
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PESCA LA RES', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', 'CALLE 18 Y JAIME ROLDÓS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Fpesca_lares.gif?alt=media&token=a72d75d0-f633-4522-ab01-8662f0f2f75d', '0983908942', 'https://walink.co/71a243', 'https://goo.gl/maps/Ndjgp6rHTkwmed7MA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PESCA LA RES');


-- LOKOS D'' ASAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LOKOS D'' ASAR', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS juancarlosgandara@hotmail.com', 'COOP. CARLOS JULIO AV. PRINCIPAL Nº 205 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Flokos_asar.gif?alt=media&token=c4fee814-5307-420d-9c4b-472a0aa427a9', '0939460610', 'https://walink.co/197de0', 'https://goo.gl/maps/gba1258DERkjDc9x8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LOKOS D'' ASAR');


-- EL TIZNE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'EL TIZNE', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', ' Parroquia Siete de Octubre y, C. Cuarta, Quevedo 120305', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Ftizne.gif?alt=media&token=4d7fe998-29b2-439f-aa03-ca8715ee2d7f', '099 179 6597', 'https://walink.co/46fd6b', 'https://maps.app.goo.gl/mddRioEY9zdYm4vg6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'EL TIZNE');


-- PARRILLADAS Y MARISQUERIAS STANCIA ARGENTINA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARRILLADAS Y MARISQUERIAS STANCIA ARGENTINA', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', 'MALECON # 506 Y QUINTA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Fargentinas.gif?alt=media&token=7a8ba35f-347d-4186-a814-0bb5e03230c2', '0985158531 - 0960956172', 'https://walink.co/75d54d', 'https://goo.gl/maps/U3B2KaD34E2yjxhNA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARRILLADAS Y MARISQUERIAS STANCIA ARGENTINA');


-- LA PATRONA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LA PATRONA', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS', 'Malecón Eloy Alfaro', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Fpatrona.gif?alt=media&token=c63b0f72-01de-4769-b695-deafecab22cf', '099 925 2011', 'https://walink.co/f511fb', 'https://goo.gl/maps/iHFNCpeUwUx1M6uG9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LA PATRONA');


-- TORO SANGRIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'TORO SANGRIA', 'Establecimiento de alimentos y bebidas con especialidad en CORTES Y PARRILLADAS  torosangria@outlook.com', 'CDLA. SAN JOSE, CALLE DECIMA OCTAVA  AV. JAIME ROLDOS ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Parrilladas%2FGifs%2Ftoro_sangria.gif?alt=media&token=2b571803-46fe-43df-8aa2-bd9f01ec7841', '0994741649', 'https://walink.co/256fc1', 'https://goo.gl/maps/9dTPLnWPBfb9DaYo6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Asaderos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'TORO SANGRIA');


-- MIEL Y FRUTAS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MIEL Y FRUTAS', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.  paulocostales@gail.com', 'BOLIVAR Y DECIMA PRIMERA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Fmiel%20y%20frutas.gif?alt=media&token=80f8e3f9-7539-4dd5-a0d4-73f7939abbae', '0996623434', 'https://walink.co/563f6b', 'https://g.page/MielyFrutas?share', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MIEL Y FRUTAS');


-- FRIDA ICE CREAM
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'FRIDA ICE CREAM', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' MALECON, C. Quinta 216, QUEVEDO - A LADO DEL PALACIO DE CRISTAL', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Ffrida.gif?alt=media&token=5b10fa0c-d4df-4d63-aec3-6a007549bb50', '0984160547', 'https://walink.co/a174f5', 'https://maps.app.goo.gl/xXq4amAQeYuJwrBu9', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'FRIDA ICE CREAM');


-- LICORLADOS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LICORLADOS', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' MALECÓN y 4ta JUNTO AL PALACIO DE CRISTAL QUEVEDO - LOS RÍOS ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Flicorlados.gif?alt=media&token=4abda5f3-717b-4255-98f3-e43153b39876', '0988042260', 'https://walink.co/78ef8a', 'https://goo.gl/maps/aVn9vZyNBXysuSvg6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LICORLADOS');


-- WAFFLES & CREPES DEPUIS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'WAFFLES & CREPES DEPUIS', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales. wafflesycrepes@outlook.com', 'BRASIL S/N Y GUATEMALA ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Fwafles.gif?alt=media&token=deff0de1-891d-49f4-a471-5a26fcc285ab', '0939215143', 'https://walink.co/252d43', 'https://g.page/WafflesyCrepes?share', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'WAFFLES & CREPES DEPUIS');


-- FRUTILANDIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'FRUTILANDIA', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales. jhojan.1990@hotmail.com', 'CDLA. VENUS DEL RIO.  CALLE 24 DE MAYO C.C.  PASEO SHOPPING QUEVEDO LC. C-2', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Ffrutilandia.gif?alt=media&token=4552b83d-af05-4d45-9dcf-f7fbbf5e58e9', '0959943935', 'https://walink.co/10dee4', 'https://goo.gl/maps/ef6grJzkYmBFXEP68', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'FRUTILANDIA');


-- SORBETTO ARTESANAL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'SORBETTO ARTESANAL', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales. quevedo@sorbeto.ec', 'CDLA. VENUS DEL RIO.  CALLE 24 DE MAYO C.C.  PASEO SHOPPING QUEVEDO LC. C10', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Fsorbetto.gif?alt=media&token=86e7123c-950f-4bdb-929c-e9c99d32f904', '052762241', 'https://wa.link/pyt54x', 'https://goo.gl/maps/iWXrvZhV6skykWuW8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'SORBETTO ARTESANAL');


-- NATURISSIMO 
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'NATURISSIMO ', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales. kare_negrita15@hotmail.com', 'CDLA. VENUS DEL RIO.  CALLE 24 DE MAYO C.C.  PASEO SHOPPING QUEVEDO LC. 10 B', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Fnaturismo.gif?alt=media&token=ad9df5f4-f018-4d35-a51b-a962ed8226c9', '0988323353', '', '', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'NATURISSIMO ');


-- COCO EXPRESS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'COCO EXPRESS', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales. rodrigo19962018@gmail.com', 'CDLA. VENUS DEL RIO. CALLE 24 DE MAYO  C.C. PASEO SHOPPING QUEVEDO LC. 4', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Helados%20y%20frutas%2FGifs%2Fcoco%20exprés.gif?alt=media&token=25006658-f4ac-4e55-964c-595696f5170d', '0991588465', 'https://walink.co/270e4d', 'https://goo.gl/maps/TJ4y9phDUo8PXnqV6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Helados' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'COCO EXPRESS');


-- BOHO GARDEN PLAZA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'BOHO GARDEN PLAZA', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RIO - LOCAL 54 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fboho.gif?alt=media&token=e5dbc152-04c4-483e-b518-6beecb9f312a', '0995151308', 'https://walink.co/49eece', 'https://maps.app.goo.gl/eiv5h2Ssw9ArCYqc6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'BOHO GARDEN PLAZA');


-- RÍO PIQUEOS BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RÍO PIQUEOS BAR', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RÍO - LOCAL 90', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Frio_piqueos.gif?alt=media&token=41917d80-211d-4479-ad40-d746e5d6aadd', '0981132740', 'https://wa.link/pyt54x', 'https://goo.gl/maps/XjPtw32GMpVEWoeR6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RÍO PIQUEOS BAR');


-- VITONO RESTO BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VITONO RESTO BAR', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', 'MALECON ELOY ALFARO Y CALLE 15', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fvitono.gif?alt=media&token=b77a0245-a9ce-467e-9627-4a24b81f4163', '0997875529', 'https://walink.co/780371', 'https://maps.app.goo.gl/qpJQqsrfBe5hyeBR6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VITONO RESTO BAR');


-- PARADISE RESTO BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARADISE RESTO BAR', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RÍO - LOCAL 88 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fparadise.gif?alt=media&token=ffc3580a-61a8-4029-99b3-2b85c762582c', '096 059 0018', 'https://walink.co/b51bcf', 'https://maps.app.goo.gl/M6dv5zq9qRapndk2A', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARADISE RESTO BAR');


-- COCO FRESH
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'COCO FRESH', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RÍO - LOCAL 89', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fcoco_fresh.gif?alt=media&token=b40a6b45-ace5-464d-bfe6-0c3c8a7eb427', '0991588465', 'https://walink.co/afe2b7', 'https://goo.gl/maps/ECTpZ5sV39CxDsna7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'COCO FRESH');


-- RESTO BAR PLAN B
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RESTO BAR PLAN B', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RÍO - LOCAL 51 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fplanb.gif?alt=media&token=349e4598-f288-4147-aabc-710112f48597', '0959436098', 'https://walink.co/5a254a', 'https://goo.gl/maps/2wib8ogawFuTGqzj8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RESTO BAR PLAN B');


-- MUNGUS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MUNGUS', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' MALECON ELOY ALFARO Y CALLE 15', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fmungus.gif?alt=media&token=58f9e911-f6ab-4a76-bd5a-05f8abf48a22', '0984632589', 'https://walink.co/138ed6\n', 'https://maps.app.goo.gl/V8e5kKgQCneDHaUQA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MUNGUS');


-- THE HÁBITAT
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'THE HÁBITAT', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RÍO - LOCAL 67', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fhabitat.gif?alt=media&token=6230b3ba-f5b7-43c7-bd6b-906b62cc4562', '098 163 9248', 'https://walink.co/f7feee', 'https://maps.app.goo.gl/fwU27rEjwzmNyHYk7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'THE HÁBITAT');


-- ROOFTOP SPORT BAR
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'ROOFTOP SPORT BAR', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' C. Cuarta, Quevedo', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Frooftop.gif?alt=media&token=e68bfb11-4da9-48e7-85cf-b7da98945cc9', '098 000 6558', 'https://walink.co/287c25', 'https://maps.app.goo.gl/dnArbUF1JhCbKnLd6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'ROOFTOP SPORT BAR');


-- EL CONTAINER
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'EL CONTAINER', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', 'RUTA DEL RÍO - LOCAL 72', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fcontainer.gif?alt=media&token=f6a62616-4be1-40eb-a1b9-dd48b6c3e284', '098 717 2013', 'https://walink.co/d174b9', 'https://maps.app.goo.gl/mWwvyp7oNtJKq2jZA', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'EL CONTAINER');


-- RAPIDITO BEER GARDEN
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RAPIDITO BEER GARDEN', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' RUTA DEL RIO - LOCAL 46 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Frapidito_beer_garden.gif?alt=media&token=2dffe6e9-6d2d-49bf-8f81-9752460925b7', '096 947 9750', 'https://walink.co/bcb3ed', 'https://goo.gl/maps/Rjz1L4K3ma7h6rTm6', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RAPIDITO BEER GARDEN');


-- NICASSIO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'NICASSIO', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' Av WALTER ANDRADE Y 7 DE OCTUBRE -  QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fnicasio.gif?alt=media&token=47ea878d-1367-4e71-b461-ce4bc4789cbb', '0959838524', 'https://walink.co/01380c', 'https://maps.app.goo.gl/gXNGqsj6fBHGLmoK8', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'NICASSIO');


-- WINE VELVET
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'WINE VELVET', 'Establecimiento de alimentos y bebidas para la interacción y eventos sociales.', ' MALECÓN ELOY ALFARO Y 4ta - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/Bares%2FGifs%2Fwine_velvet.gif?alt=media&token=45df3815-e62e-4a95-b5f2-7ce864fe0153', '0996211780', 'https://walink.co/bb880e', 'https://maps.app.goo.gl/sBvuyEfwrWMJ2zHK7', 0.0, 1, 
(SELECT id FROM sub_categories WHERE name = 'Bares' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'WINE VELVET');


-- MUSEO MUNICIPAL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MUSEO MUNICIPAL', 'Posee muestras arqueológicas de las culturas: Tolita, Daule Tejar, Milagro Quevedo, Chorrera, Machalilla , Carchi, Manteña, Valdivia, Jama Coaque, y varios implementos de la cultura montubia. ', 'CIUDADELA MUNICIPAL, CALLE EDMUNDO WARD', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMuseo%2FGifs%2Fmuseo%20municipal.gif?alt=media&token=8634ca0f-63f3-40f3-bbdb-e3c9bd549158', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/9bFmBPd1eamTX2du5', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Museos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MUSEO MUNICIPAL');


-- VELASCO IBARRA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VELASCO IBARRA', 'Construyo el puente Velasco Ibarra por el que se puede cruzar de San Camilo a Quevedo.', ' QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMonumentos%2FGifs%2Fmonumento.gif?alt=media&token=b69ab0d6-b598-4be9-a72c-ef76d9cf73ad', '0992109625', '', '', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Monumentos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VELASCO IBARRA');


-- ELOY ALFARO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'ELOY ALFARO', 'Subyace por las fuerzas ideológicas de los montubios montoneros que fueron parte de la revolución Alfarista.', ' QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMonumentos%2FGifs%2Fmonumento.gif?alt=media&token=b69ab0d6-b598-4be9-a72c-ef76d9cf73ad', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/xb5i6xQXTxx3nqCR7', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Monumentos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'ELOY ALFARO');


-- LEÓN FEBRES CORDERO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LEÓN FEBRES CORDERO', 'Como Presidente de la República consolido la construcción de la I Etapa del Malecón, procediendo a levantarse lo que ahora es el Malecón de la Ciudad del Rio.', ' QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMonumentos%2FGifs%2Fmonumento.gif?alt=media&token=b69ab0d6-b598-4be9-a72c-ef76d9cf73ad', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/xb5i6xQXTxx3nqCR7', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Monumentos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LEÓN FEBRES CORDERO');


-- PARQUE LA MADRE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARQUE LA MADRE', 'Monumento a la madre como símbolo de amor y protección de la madre Quevedeña a sus hijos.', ' Av. 7 DE OCTUBRE Y PRIMERA', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMonumentos%2FGifs%2Fparque_lamadre.gif?alt=media&token=0af49ed0-9cbf-4741-8533-4a58809f5249', '0992109625', '', 'https://goo.gl/maps/5STXypFppm9ZHYZZ6', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Monumentos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARQUE LA MADRE');


-- G.F.E #26 CENEPA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'G.F.E #26 CENEPA', 'Homenaje del pueblo de Quevedo hacia el glorioso grupo de fuerzas especiales #26 Cenepa, asentado en la ciudad del río como una unidad militar estratégica.', ' AV QUITO VIA SANTO DOMINGO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FMonumentos%2FGifs%2Fheroes_cenepa.gif?alt=media&token=1698a431-d6f5-4d95-977d-fb0dcdb40a0d', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/RzqK6YEP8VEnxqqNA', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Monumentos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'G.F.E #26 CENEPA');


-- IGLESIA SAN JOSÉ
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'IGLESIA SAN JOSÉ', 'Con un estilo de construcción Románico se identifica la principal iglesia católica de la ciudad en honor a la virgen de la Merced', ' QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FIglesias%2FGifs%2Figlesia_jose.gif?alt=media&token=491c19f4-f817-4247-ae39-f3cff2f1115d', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/pjjWTje8BkgYJ7WA8', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Iglesias' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'IGLESIA SAN JOSÉ');


-- RONDA QUEVEDEÑA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RONDA QUEVEDEÑA', 'La ronda de confraternidad Quevedeña es una tarde y noche de comparsas folclóricas que expresan a travez de la danza flolclorica manifestaciones culturales de nuestra localidad, grupos nacionales e internacionales..', ' QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ATRACTIVOS%20CULTURALES%2FFestividades%2FGifs%2Fronda_quevedena.gif?alt=media&token=93f316c9-5a98-4603-af33-412b3dd4d5e1', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/g6v87ZbpZ1Zykes89', 0.0, 3, 
(SELECT id FROM sub_categories WHERE name = 'Festividades' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RONDA QUEVEDEÑA');


-- PARQUE DE LA FAMILIA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARQUE DE LA FAMILIA', 'Espacio recreativo considerado el más grande de la provincia de Los Ríos se encuentra ubicada en la parroquia urbana El Guayacán.  Comprende su primera etapa levantada en una extensión aproximada de dos hectáreas de terrenos, de las siete disponibles y en las cuales la municipalidad tiene proyectado continuar con otras fases. ', 'QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FParques%2Fparque_familia.jpg?alt=media&token=9236111c-4e53-4d02-8eda-7b0e65aca62c', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/p5AMvFLbFt6V3zQ9A', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Parques' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARQUE DE LA FAMILIA');


-- PARQUE LINEAL CAMILO AREVALO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARQUE LINEAL CAMILO AREVALO', 'Posee una dimensión de 550 metros lineales de ciclo vía; además, de juegos infantiles, máquinas biosaludables, observación de fauna acuática.', 'AV. CAMILO AREVALO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FParques%2Fparque_camilo.gif?alt=media&token=815278b7-7438-4f04-bf4e-1c6ac4de6a52', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/u847d6dwGdb5MM4k6', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Parques' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARQUE LINEAL CAMILO AREVALO');


-- PARQUE CENTRAL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARQUE CENTRAL', 'El parque central de la ciudad conserva una ubicación histórica de lo que fue el inicio de Quevedo,  cerca al río y al cerro, se encuentra como eje central de las calles principales de la.ciudad, la banca y el comercio de una ciudad progresista,  además se considera área de descanso y recreación para los ciudadanos', 'QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FParques%2Fparque%20central.gif?alt=media&token=e80ee073-4266-4f57-95ca-e866ed4f00dc', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/P42rhkiqpya9pTzP7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Parques' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARQUE CENTRAL');


-- PARQUE ACUÁTICO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PARQUE ACUÁTICO', 'El parque acuático del Malecón Eloy Alfaro II Etapa, es un espacio de recreación familiar, contando con canchas deportivas,  piscinas temáticas inclusivas y juegos acuáticos, además de llamativas piletas que iluminan las noches Quevedeñas', 'QUEVEDO - LOS RÍOS', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FParques%2Fparque_acuatico.gif?alt=media&token=9a20103d-d533-41ca-89d8-3ee451151ab7', '0992109625', 'https://walink.co/edfa78', 'https://goo.gl/maps/5X1j5eAUugzhq7626', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Parques' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PARQUE ACUÁTICO');


-- VENTURA  KIDS
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VENTURA  KIDS', ' Ventura Kids es un área de entretenimiento para niñas, niños, jóvenes y adultos. Juegos mecánicos: Salta Salta, Trencito paseo en animalitos, futbolines, montaña rusa y consola de juegos. Todo en un solo lugar en la terraza del centro comercial victoria aventura plaza.', 'CALLE DÉCIMA CUARTA, QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FJuegos%20infantiles%2Fventura_kids.gif?alt=media&token=e221efc5-bd1b-4cc3-be76-a5cee3cc9100', '0985022330', 'https://walink.co/13037e', 'https://goo.gl/maps/GQXqUihGGLHoaCm46', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Juegos Infantiles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VENTURA  KIDS');


-- FUN ZONE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'FUN ZONE', ' Fun Zone área de juegos en patio de comida del paseo shopping.', 'PASEO SHOPPING, QUEVEDO - LOS RÍO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FJuegos%20infantiles%2Ffun_zone.gif?alt=media&token=98d20b92-5c96-44e3-840c-ff4f812a0752', '0992109625', '', '', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Juegos Infantiles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'FUN ZONE');


-- STAR GAMES
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'STAR GAMES', ' STAR GAMES juegos de realidad virtual, videojuegos bebidas y piquéos en un lugar seguro de la ruta del Río.', ' RUTA DEL RIO - LOCAL 84', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FJuegos%20infantiles%2Fstar_games.gif?alt=media&token=0a783260-26de-4493-8c1b-2626635bd10e', '0996587100', 'https://walink.co/f21e9b', '', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Juegos Infantiles' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'STAR GAMES');


-- CANOPY
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CANOPY', ' Canopy Águila Ciudad del Río es un deporte de aventura que consiste en un deslizamiento por cables con una longitud de 500 metros que inicia en la Ciudadela municipal y finaliza en la ruta del Río.', 'RUTA DEL RIO - LOCAL 70', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20de%20Aventura%2Fcanopy.gif?alt=media&token=739624aa-346a-4af7-ae33-d5bd0e75ce3c', '0991509409', 'https://walink.co/57f53f', 'https://goo.gl/maps/2gnhhwCiGWDiWqsB7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes de Aventura' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CANOPY');


-- KAYAK
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'KAYAK', ' Kayak de Río Reptil expediciones ofrece navegación fluvial en botes de fibras, con las respectivas medidas de seguridad', 'RUTA DEL RIO - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20de%20Aventura%2Fkayac.gif?alt=media&token=ef0a7763-dd67-4fc7-904d-28792be5144d', '0981138053', 'https://walink.co/08239d', 'https://goo.gl/maps/2gnhhwCiGWDiWqsB7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes de Aventura' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'KAYAK');


-- RAFTING
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RAFTING', 'Rafting Reptil expediciones ofrece navegación fluvial en el río Quevedo en balsas inflables  tipo raft navegado por sus tripulantes. En especial en época de invierno', 'RUTA DEL RIO - QUEVEDO ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20de%20Aventura%2Frating.gif?alt=media&token=9c0d5d32-c9cc-4c09-8661-a715c484c48e', '0981138053', 'https://walink.co/08239d', 'https://goo.gl/maps/2gnhhwCiGWDiWqsB7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes de Aventura' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RAFTING');


-- PAINTBALL RUTA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PAINTBALL RUTA', ' Paintball Route espacio de deporte extremo y adrenalina pura para compartir entre amigos y familias.', ' RUTA DEL RÍO - LOCAL 32', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20extremos%2Fpaint_ball.gif?alt=media&token=73ea8204-5e32-4050-85ae-b4fbe9f6b76f', '0989160358', 'https://walink.co/d139cf', 'https://goo.gl/maps/AVkN36QK9K26fRdH9', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes Extremos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PAINTBALL RUTA');


-- MINI GOLF
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'MINI GOLF', ' Mini golf espacio de recreación familiar para la práctica deportiva del golf miniatura además de bebidas y piquéos en un ambiente acogedor.', 'RUTA DEL RÍO - LOCAL 68', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20extremos%2Fmini_golf.gif?alt=media&token=cff6861e-bd8c-42fd-a822-43040294bc21', '099 382 7504', 'https://walink.co/b221e0', 'https://goo.gl/maps/uLrjaz8CdWRKdKXQ8', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes Extremos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'MINI GOLF');


-- CHIVAS Y BOTES ACUATICOS CORMORÁN
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIVAS Y BOTES ACUATICOS CORMORÁN', ' Chivas acuáticas travesías fluviales por el río Quevedo en embarcaciones típicas de la localidad donde se conoce de la vegetación y la fauna del Río Quevedo y atractivos del entorno.', 'RUTA DEL RIO - QUEVEDO ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20extremos%2Fcormoran.gif?alt=media&token=c695a37b-be97-4210-82c4-775a35e2defd', '0980006527', 'https://walink.co/ae81cb', 'https://goo.gl/maps/9mPVXmEvWQNHx3NX8', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes Extremos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIVAS Y BOTES ACUATICOS CORMORÁN');


-- CHIVEROS BIKERS STORE
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CHIVEROS BIKERS STORE', ' Chiveros Bykers estamos enfocados en el deporte, brindamos un disfrute en ruedas para todas las familias Quevedeñas, desde los más chicos hasta los más adultos. Vive la experiencia disfruta de chiveros.', 'RUTA DEL RIO - LOCAL 39', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20extremos%2Fchiveros_bikes.gif?alt=media&token=82c9d34f-5ed9-4164-b6dc-dbe3de1c48b2', '0967787495', 'https://walink.co/af5ad3', 'https://goo.gl/maps/2gnhhwCiGWDiWqsB7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes Extremos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CHIVEROS BIKERS STORE');


-- CICLOPASEO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CICLOPASEO', 'Ciclo paseo programa recreativo familiar generado por el gobierno municipal de Quevedo donde se ejecutan actividades como: Paseo en bicicleta, caminatas, bailoterapia, ferias de emprendimientos, vuelos de cometas, sorteos y premios para los más pequeños durante el verano de cada año.', 'RUTA DEL RIO - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDeportes%20extremos%2Fciclopaseo.gif?alt=media&token=9a152dee-7bb6-4026-8c0e-ef370adcadc9', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/9mPVXmEvWQNHx3NX8', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Deportes Extremos' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CICLOPASEO');


-- BBT OTRA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'BBT OTRA', '', ' RUTA DEL RIO - LOCAL 76 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDiscotecas%2Fbbt_otra.gif?alt=media&token=5a1fec94-5f3f-4404-a801-4f10121eb219', '2770501 - 0997518662', 'https://walink.co/9ac308', 'https://goo.gl/maps/2Kh3S4XCpzkFR8tY7', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Discotecas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'BBT OTRA');


-- LUX DISCOTEC
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'LUX DISCOTEC', '', '  RUTA DEL RIO - LOCAL 30 ', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDiscotecas%2Fluxu_discotec.gif?alt=media&token=c1493523-dfa0-433f-8089-509d0bde84ae', '0997518662', 'https://walink.co/bced5b', 'https://goo.gl/maps/DDZDAhupuQGzdAov6', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Discotecas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'LUX DISCOTEC');


-- FOGO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'FOGO', '', 'MALECON ELOY ALFARO Y CALLE 15', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FDiscotecas%2Ffogo.gif?alt=media&token=3091f8db-cd4f-493e-8818-06a70a4c1d42', '0960842081', 'https://walink.co/9b74cd', 'https://goo.gl/maps/twvBNFpiCrWFmqbL9', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Discotecas' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'FOGO');


-- ATLAS GYM
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'ATLAS GYM', ' Atlas Gym Ruta del Río: Centro de acondicionamiento físico familiar que promueve salud a través del desarrollo de las capacidades físicas mediante clases guiadas de forma constante por instructores certificados.', 'RUTA DEL RIO - LOCAL 29', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FGimnasios%2Fatlas_gym.gif?alt=media&token=7c664162-c106-42bb-976b-26df80eb4fbe', '0959582842', 'https://walink.co/176c5c', 'https://goo.gl/maps/KtWFjabxVcwWqPp99', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Gimnasios' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'ATLAS GYM');


-- DR GYM
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'DR GYM', '', 'Av. JAIME ROLDÓS Y 21ava. (ESTADIO 7 E OCTUBRE)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FGimnasios%2Fdr_gym.gif?alt=media&token=dd8ae311-322b-43f5-919a-f141447284e9', ' 099 163 1372', 'https://walink.co/f66961', 'https://goo.gl/maps/TQ48vAPvJFRq3FY28', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Gimnasios' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'DR GYM');


-- CF MILLA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'CF MILLA', '', 'VIGÉSIMA TERCERA Y JOSÉ DE SUCRE', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FGimnasios%2Fmilla.gif?alt=media&token=82bda673-3ec3-44f1-809a-bc37650e408a', '0992213089', 'https://walink.co/43b542', 'https://goo.gl/maps/F9fzSSxP52wuMN3RA', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Gimnasios' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'CF MILLA');


-- BAMBÚ DEL RÍO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'BAMBÚ DEL RÍO', 'Bambú del Río SPA - Souvenirs, es un espacio de relajación, ofertando servicios de masajes relajantes y tratamientos corporales de la piel, además recuerdos de la ciudad del Río. ', ' RUTA DEL RÍO - LOCAL 40', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/ESPARCIMIENTO%2FRelajación%2Fbambu_delrio.gif?alt=media&token=fd2a6a99-7c30-4f5f-9370-ca1c9f36968c', '099 941 0220', 'https://walink.co/4e6d2a', 'https://goo.gl/maps/f8qbhRkB5a4LKD6GA', 0.0, 4, 
(SELECT id FROM sub_categories WHERE name = 'Relajación' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'BAMBÚ DEL RÍO');


-- PASEO SHOPPING QUEVEDO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'PASEO SHOPPING QUEVEDO', 'Paseo Shoping Quevedo,  un centro comercial de la corporación Rosado, que oferta productos de tiendas con marcas nacionales e internacionales,  franquicias , a la altura de grandes ciudades. Salas de cines, patio de comidas,  comisariato, ferrisariato, etc.', '  TRANSVERSAL CENTRAL, QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/COMPRAS%2FGifs%2Fpaseo_shopping.gif?alt=media&token=b9c0f6aa-6cc6-4f5e-b225-64e16bc5e7f4', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/TWzJWtmQtD3733ig8', 0.0, 5, 
(SELECT id FROM sub_categories WHERE name = 'Centros Comerciales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'PASEO SHOPPING QUEVEDO');


-- QUEVEDO SHOPPING CENTER
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'QUEVEDO SHOPPING CENTER', 'Quevedo Shoping Center,  ubicado en el corazón de la ciudad, es un Centro comercial con locales comerciales que ofertan prendas de vestir en marcas nacionales y extranjeras, además artículos para el hogar, artesanías, accesorios y un patio de comidas en la segunda planta. En este centro comercial tenemos un centro de convenciones para todo evento social.', '7ma ENTRE 7 DE OCTUBRE Y BOLÍVAR , CENTRO DE QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/COMPRAS%2FGifs%2Fshopping_center.gif?alt=media&token=3264c5a2-19e0-4908-9827-678f9e8fafce', '098 698 8030', 'https://walink.co/4b6903', 'https://maps.app.goo.gl/drpSwYyTUCFER26o6', 0.0, 5, 
(SELECT id FROM sub_categories WHERE name = 'Centros Comerciales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'QUEVEDO SHOPPING CENTER');


-- VICTORIA VENTURA PLAZA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VICTORIA VENTURA PLAZA', 'El primer centro comercial de la ciudad, oferta variedad de locales comerciales en vestimenta para las familias, alimentos- bebidas,  juegos infantiles y varias marcas corporativas con franquicias nacionales.', '  Av. 7 DE OCTUBRE ENTRE CALLE 13 Y 14 - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/COMPRAS%2FGifs%2Fvictoria_ventura.gif?alt=media&token=28cdab70-aef4-4ff2-8b72-c2c96245032f', '098 502 2330', 'https://walink.co/17c748', 'https://maps.app.goo.gl/5NYnrgs6GXjsPjBJ9', 0.0, 5, 
(SELECT id FROM sub_categories WHERE name = 'Centros Comerciales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VICTORIA VENTURA PLAZA');


-- TRANSPORTES QUEVEDO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'TRANSPORTES QUEVEDO', '', 'La Sede Está Ubicada en la Avenida San Rafael y Walter Andrade  Diagonal a la Terminal Terrestre de Quevedo', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/TRANSPORTES%2FGifs%2Ftrans_quevedo.gif?alt=media&token=7e66ddf3-9c0a-4173-bcaf-46444079e4ec', '0992109625', 'https://walink.co/8abfd4', 'https://goo.gl/maps/FtK6zSCwKfTLbsve8', 0.0, 6, 
(SELECT id FROM sub_categories WHERE name = 'Interprovinciales' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'TRANSPORTES QUEVEDO');


-- RUTA AVITURISMO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RUTA AVITURISMO', 'Quevedo cuenta con un registro urbano y rural de aproximadamente 150 especies de aves, que unen las regiones del Choco y Tumbes.  Se puede avistar en el bosque de la ciudadela municipal y en las travesías fluviales por el rio Quevedo.', 'RUTA DEL RIO - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/RUTAS%2FGifs%2FGifs%2Faviturismo.gif?alt=media&token=bec5cc92-b9bb-490c-aa17-c006099f9b53', '0999410220', 'https://walink.co/a7ff74', 'https://goo.gl/maps/9mPVXmEvWQNHx3NX8', 0.0, 7, 
(SELECT id FROM sub_categories WHERE name = 'Ruta del Rio' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RUTA AVITURISMO');


-- RUTA FULL DAY QUEVEDO URBANO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'RUTA FULL DAY QUEVEDO URBANO', 'En oferta a los servicios integrados de actividades de aventura,  recreación,  guianza,  cultura y gastronomía,  Reptil expediciones y águilas ciudad del rio ofrecen un TOUR denominado', 'RUTA DEL RIO - QUEVEDO', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/RUTAS%2FGifs%2FGifs%2Ffull_day.gif?alt=media&token=d4f42cb6-6005-413d-b202-d5949e1eb371', '0999410220', 'https://walink.co/4e6d2a', 'https://goo.gl/maps/9mPVXmEvWQNHx3NX8', 0.0, 7, 
(SELECT id FROM sub_categories WHERE name = 'Ruta del Rio' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'RUTA FULL DAY QUEVEDO URBANO');


-- VITAE MELIPONARIO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'VITAE MELIPONARIO', '', 'RUTA DEL RIO - LOCAL 28', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/RUTAS%2FGifs%2FGifs%2Fvitae_meliponario.gif?alt=media&token=89ef0823-79d3-4d5c-9a97-44d5c5a0fea6', '0983162138', 'https://walink.co/be2fcf', 'https://maps.app.goo.gl/1HhuS1Wq8GNW2RzP6', 0.0, 7, 
(SELECT id FROM sub_categories WHERE name = 'Ruta del Rio' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'VITAE MELIPONARIO');


-- XPLORA
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'XPLORA', 'Venta de boletos aéreos y paquetes turísticos gerencia@xplora.com.ec', 'AV- 7 DE OCTUBRE S/N Y DECIMA CUARTA (CC VICTORIA VENTURA PLAZA)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/AGENCIAS%20DE%20VIAJE%2FGifs%2Fxplora.gif?alt=media&token=a444dcd4-ea47-4803-b2de-33fa438a7c11', '0978687008', 'https://walink.co/75eb4d', 'https://goo.gl/maps/whBYmGaDUuZqEDn97', 0.0, 8, 
(SELECT id FROM sub_categories WHERE name = 'Agencias de Viaje' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'XPLORA');


-- DELGADO TRAVEL
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'DELGADO TRAVEL', 'Venta de boletos aéreos y paquetes turísticos estefani_19917@hotmail.com', ' AV. 7 DE OCTUBRE S/N Y DECIMA TERCERA  (C.C. VICTORIA VENTURAPLAZA OF-06)', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/AGENCIAS%20DE%20VIAJE%2FGifs%2Fdelgado%20travel.gif?alt=media&token=2aadaa3d-875b-4f24-9771-f532f38f3e2e', '0993223319', 'https://walink.co/fd4844', 'https://goo.gl/maps/tUy5TAWCYVsm56mdA', 0.0, 8, 
(SELECT id FROM sub_categories WHERE name = 'Agencias de Viaje' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'DELGADO TRAVEL');


-- EXPLOMUNDO
INSERT INTO establishments (name, description, address, image1, phone, whatsapp, location, rating, id_category, id_sub_category, created_at, updated_at)
SELECT 'EXPLOMUNDO', 'Venta de boletos aéreos y paquetes turísticos exploratumundoviajes@gmail.com', 'CALLE MEXICO, 100. AV GUAYAQUIL', 'https://firebasestorage.googleapis.com/v0/b/quevedo-turismo.appspot.com/o/AGENCIAS%20DE%20VIAJE%2FGifs%2Fexplomundo.gif?alt=media&token=12e44a78-0239-4184-921c-560f02761da1', '0960851030', 'https://walink.co/02174a', 'https://goo.gl/maps/iU4PpKcwtk4hMzUf6', 0.0, 8, 
(SELECT id FROM sub_categories WHERE name = 'Agencias de Viaje' LIMIT 1),
NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM establishments WHERE name = 'EXPLOMUNDO');
