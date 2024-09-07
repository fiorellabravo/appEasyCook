DROP DATABASE IF EXISTS appEasycook;
CREATE DATABASE appEasycook;
USE appEasycook;
CREATE TABLE usuarios (
    user_id INT(100) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL,
    contraseña VARCHAR(45) NOT NULL,
    nombre VARCHAR(45) NOT NULL
);
CREATE TABLE categoria (
    idcategoria INT(10) AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(45) NOT NULL
);
CREATE TABLE recetas (
    recetas_id INT(10) AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(45) NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    fecha_creacion DATE NOT NULL,
    categoria_id INT(10) NOT NULL,
    user_id INT(10) NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categoria(idcategoria),
    FOREIGN KEY (user_id) REFERENCES usuarios(user_id)
);
create table pasos(
idpasos int(10) primary key,
recetas_id varchar(45) not null,
num_pasos varchar(100) not null,
instrucciones varchar(45) not null,
fecha_creacion varchar(45) not null
);
CREATE TABLE comentarios (
    idcomentarios INT(10) AUTO_INCREMENT PRIMARY KEY,
    recetas_id INT(10) NOT NULL,
    user_id INT(10) NOT NULL,
    contenido VARCHAR(45) NOT NULL,
    rating VARCHAR(45) NOT NULL,
    FOREIGN KEY (recetas_id) REFERENCES recetas(recetas_id),
    FOREIGN KEY (user_id) REFERENCES usuarios(user_id)
    );
    CREATE TABLE ingredientes (
    idingredientes INT(10) AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(500) NOT NULL
);
CREATE TABLE favorito (
    idfavoritos INT(10) AUTO_INCREMENT PRIMARY KEY,
    user_id INT(10) NOT NULL,
    recetas_id INT(10) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES usuarios(user_id),
    FOREIGN KEY (recetas_id) REFERENCES recetas(recetas_id)
);
CREATE TABLE recetas_ingredientes (
    recetas_id INT(10) NOT NULL,
    idingredientes INT(10) NOT NULL,
    cantidad DECIMAL(10,2) not null,
    unidad VARCHAR(50) not null, 
    PRIMARY KEY (recetas_id, idingredientes),
    FOREIGN KEY (recetas_id) REFERENCES recetas(recetas_id),
    FOREIGN KEY (idingredientes) REFERENCES ingredientes(idingredientes)
);
INSERT INTO usuarios (username, email, contraseña, nombre) VALUES
('jdoe', 'jdoe@example.com', 'password123', 'John Doe'),
('asmith', 'asmith@example.com', 'password456', 'Alice Smith'),
('bwilliams', 'bwilliams@example.com', 'password789', 'Bob Williams');
INSERT INTO categoria (nombre, descripcion) VALUES
('Almuerzo', 'Platos con proteínas y carbohidratos.'),
('Merienda', 'Bocadillos ligeros entre comidas.'),
('Ensalada', 'Mezcla de vegetales, frutas y aderezos.'),
('Postre', 'Dulces para finalizar la comida.');
INSERT INTO ingredientes (nombre, descripcion) VALUES
('Pollo', 'Pechuga de pollo, ideal para tacos y otros platillos.'),
('Tortillas', 'Tortillas de maíz o harina, para rellenar con diferentes ingredientes.'),
('Quinoa', 'Grano nutritivo, usado en ensaladas y como acompañamiento.'),
('Verduras', 'Pimientos, cebollas, tomates y otros vegetales variados.'),
('Espaguetis', 'Pasta larga y delgada, base de muchos platillos italianos.'),
('Salsa Boloñesa', 'Salsa de carne y tomate para acompañar pasta.'),
('Aguacate', 'Fruto cremoso, perfecto para sándwiches y ensaladas.'),
('Queso', 'Queso rallado o en rebanadas, usado para gratinar y rellenar platillos.'),
('Harina', 'Ingrediente base para hacer masas y postres.'),
('Manzanas', 'Fruta dulce, ideal para tartas y postres.'),
('Chocolate', 'Ingrediente principal para postres y dulces, como mousse y brownies.'),
('Lentejas', 'Legumbre rica en proteínas, ideal para sopas y guisos.'),
('Frutas', 'Frutas variadas para ensaladas y batidos.'),
('Avena', 'Ingrediente para galletas y desayunos.'),
('Pasas', 'Uvas secas, utilizadas en postres y galletas.'),
('Arroz', 'Grano básico para acompañar diversos platillos.'),
('Salsa Barbacoa', 'Salsa a base de tomate y especias para dar sabor a carnes.');
select*from pasos;
INSERT INTO recetas (titulo, descripcion, fecha_creacion, categoria_id, user_id) VALUES
('Tacos de Pollo', 'Tortillas con pollo sazonado.', '2024-09-01', 1, 16),
('Ensalada de Quinoa y Verduras', 'Ensalada fresca de quinoa', '2024-09-02', 3, 17),
('Espaguetis a la Boloñesa', 'Pasta con salsa boloñesa', '2024-09-03', 1, 18),
('Sándwich de Pavo con Aguacate', 'Pan integral con pavo y aguacate', '2024-09-04', 2, 16),
('Enchiladas de Queso', 'Tortillas rellenas de queso', '2024-09-05', 1, 17),
('Dip de Hummus con Verduras', 'Hummus con verduras frescas.', '2024-09-06', 2, 18),
('Batido de Frutas', 'Frutas mezcladas con yogur.', '2024-09-07', 2, 16), 
('Galletas de Avena y Pasas', 'Galletas de avena con pasas.', '2024-09-08', 4, 17),
('Tarta de Manzana', 'Tarta con relleno de manzana.', '2024-09-09', 4, 18),
('Mousse de Chocolate', 'Mousse cremosa de chocolate', '2024-09-10', 4, 16),
('Brownies de Chocolate', 'Brownies de chocolate densos.', '2024-09-11', 4, 17),
('Wraps de Pollo y Vegetales', 'Tortillas con pollo y vegetales.', '2024-09-12', 1, 18),
('Sopa de Lentejas', 'Sopa de lentejas y vegetales', '2024-09-13', 1, 16),
('Ensalada de Frutas', 'Ensalada ligera de frutas', '2024-09-14', 3, 17),
('Mini Empanadas de Arroz', 'Empanadas de arroz y queso', '2024-09-15', 1, 18),
('Arroz con Pollo y Salsa Barbacoa', 'Arroz con pollo y salsa barbacoa', '2024-09-16', 1, 16);
INSERT INTO recetas_ingredientes (recetas_id, idingredientes, cantidad, unidad) VALUES
 (17, 1, 500, 'gramos'),
 (17, 2, 10, 'unidades'),
 (18, 3, 200, 'gramos'),
 (18, 4, 150, 'gramos'),
 (19, 5, 250, 'gramos'),
 (19, 6, 300, 'gramos'),
 (20, 7, 200, 'gramos'),
 (20, 8, 1, 'unidad'),
 (24, 10, 300, 'gramos'),
 (24, 9, 1, 'unidad'),
 (26, 11, 100, 'gramos'),
 (29, 12, 200, 'gramos'),
 (30, 13, 500, 'gramos'),
 (22, 14, 150, 'gramos'),
 (22, 15, 100, 'gramos'),
 (32, 16, 300, 'gramos'),
 (32, 17, 200, 'gramos');
INSERT INTO pasos (idpasos, recetas_id, num_pasos, instrucciones, fecha_creacion) VALUES
(1, 17, 1, 'Sazonar y cocinar el pollo.', '2024-09-01'),
(2, 17, 2, 'Calentar las tortillas.', '2024-09-01'),
(3, 17, 3, 'Rellenar las tortillas con el pollo.', '2024-09-01'),
(4, 17, 4, 'Añadir salsa al gusto.', '2024-09-01'),
(5, 17, 5, 'Servir con una guarnición de ensalada.', '2024-09-01'),

(6, 18, 1, 'Cocinar la quinoa.', '2024-09-02'),
(7, 18, 2, 'Mezclar la quinoa con las verduras.', '2024-09-02'),
(8, 18, 3, 'Agregar aderezo y mezclar.', '2024-09-02'),

(9, 19, 1, 'Cocinar los espaguetis.', '2024-09-03'),
(10, 19, 2, 'Preparar y cocinar la salsa boloñesa.', '2024-09-03'),
(11, 19, 3, 'Mezclar pasta con la salsa y servir.', '2024-09-03'),

(12, 20, 1, 'Tostar el pan.', '2024-09-04'),
(13, 20, 2, 'Añadir pavo y aguacate al pan.', '2024-09-04'),
(14, 20, 3, 'Cerrar y cortar el sándwich.', '2024-09-04'),
(15, 20, 4, 'Añadir un toque de mostaza si se desea.', '2024-09-04'),
(16, 20, 5, 'Servir acompañado de una bebida fría.', '2024-09-04'),

(17, 21, 1, 'Rellenar las tortillas con queso.', '2024-09-05'),
(18, 21, 2, 'Enrollar y colocar en una fuente.', '2024-09-05'),
(19, 21, 3, 'Hornear hasta dorar.', '2024-09-05'),

(20, 22, 1, 'Preparar el hummus.', '2024-09-06'),
(21, 22, 2, 'Cortar las verduras.', '2024-09-06'),
(22, 22, 3, 'Servir con las verduras.', '2024-09-06'),

(23, 23, 1, 'Mezclar frutas y yogur.', '2024-09-07'),
(24, 23, 2, 'Licuar hasta homogéneo.', '2024-09-07'),
(25, 23, 3, 'Servir frío.', '2024-09-07'),

(26, 24, 1, 'Mezclar avena y pasas.', '2024-09-08'),
(27, 24, 2, 'Agregar ingredientes húmedos y mezclar.', '2024-09-08'),
(28, 24, 3, 'Formar bolitas y hornear.', '2024-09-08'),

(29, 25, 1, 'Preparar y extender la masa.', '2024-09-09'),
(30, 25, 2, 'Rellenar con manzanas.', '2024-09-09'),
(31, 25, 3, 'Hornear hasta dorar.', '2024-09-09'),
(32, 25, 4, 'Dejar enfriar antes de servir.', '2024-09-09'),
(33, 25, 5, 'Decorar con una pizca de canela si se desea.', '2024-09-09'),

(34, 26, 1, 'Derretir y enfriar el chocolate.', '2024-09-10'),
(35, 26, 2, 'Batir claras y mezclar con chocolate.', '2024-09-10'),
(36, 26, 3, 'Enfriar en el refrigerador.', '2024-09-10'),

(37, 27, 1, 'Mezclar ingredientes secos y húmedos.', '2024-09-11'),
(38, 27, 2, 'Hornear la mezcla.', '2024-09-11'),
(39, 27, 3, 'Enfriar y cortar.', '2024-09-11'),

(40, 28, 1, 'Cocinar y picar el pollo.', '2024-09-12'),
(41, 28, 2, 'Preparar y picar los vegetales.', '2024-09-12'),
(42, 28, 3, 'Envolver en tortillas.', '2024-09-12'),
(43, 28, 4, 'Servir con salsa picante si se prefiere.', '2024-09-12'),
(44, 28, 5, 'Acompañar con una guarnición fresca.', '2024-09-12'),

(45, 29, 1, 'Cocinar lentejas con agua y verduras.', '2024-09-13'),
(46, 29, 2, 'Añadir condimentos y cocinar.', '2024-09-13'),
(47, 29, 3, 'Servir caliente.', '2024-09-13'),

(48, 30, 1, 'Picar las frutas.', '2024-09-14'),
(49, 30, 2, 'Mezclar en un bol.', '2024-09-14'),
(50, 30, 3, 'Servir fría.', '2024-09-14'),

(51, 31, 1, 'Preparar relleno de arroz y queso.', '2024-09-15'),
(52, 31, 2, 'Rellenar y sellar empanadas.', '2024-09-15'),
(53, 31, 3, 'Hornear hasta dorar.', '2024-09-15'),
(54, 31, 4, 'Servir con una salsa de tu elección.', '2024-09-15'),
(55, 31, 5, 'Disfrutar caliente.', '2024-09-15'),

(56, 32, 1, 'Cocinar arroz y pollo.', '2024-09-16'),
(57, 32, 2, 'Mezclar pollo con salsa barbacoa.', '2024-09-16'),
(58, 32, 3, 'Servir con arroz.', '2024-09-16');
INSERT INTO favorito (user_id, recetas_id) VALUES 
(16, 17),  
(16, 23),  
(17, 18),
(17, 21);
INSERT INTO comentarios (recetas_id, user_id, contenido, rating) VALUES
(17, 16, 'Deliciosos y fáciles de preparar', 5),
(18, 17, 'Muy saludable y sabroso', 4),
(19, 18, 'La salsa boloñesa es excelente', 5),
(20, 16, 'Perfecto para una comida rápida', 4),
(21, 17, 'El queso se derrite perfectamente', 5),
(22, 18, 'El hummus es muy cremoso', 4),
(23, 16, 'Muy refrescante', 5),
(24, 17, 'Las galletas están muy bien hechas', 4),
(25, 18, 'Ideal para postre', 5),
(26, 16, 'El mousse es ligero y delicioso', 5),
(27, 17, 'Brownies muy ricos', 4),
(28, 18, 'Gran combinación de pollo y vegetales', 5),
(29, 16, 'Sopa rica y reconfortante', 4),
(30, 17, 'Una ensalada perfecta para el verano', 5),
(31, 18, 'Empanadas muy sabrosas', 4),
(32, 16, 'Buen plato principal', 5);


/*1.-Obtener usuarios y sus recetas favoritas*/
select (select nombre from usuarios where user_id= f.user_id) as usuario,
(select titulo from recetas where recetas_id= f.recetas_id) as receta from favorito f;
/*2.- Obtener listado de todas las recetas y sus categorías*/
select r.titulo,
(select c.nombre
from categoria c
where c.idcategoria=r.categoria_id) as categoria from recetas r;
/*3.- Obtener listado de recetas con ingredientes que contienen más de 200 gramos*/
select r.titulo, i.nombre, ri.cantidad, ri.unidad
from recetas r, recetas_ingredientes ri, ingredientes i
where r.recetas_id = ri.recetas_id
and ri.idingredientes = i.idingredientes;
/*4.-Listado de todos los usuarios que han creado recetas en la categoría 'Postre'*/
select distinct u.username, u.nombre from usuarios u, recetas r, categoria c
where u.user_id = r.user_id and r.categoria_id = c.idcategoria and c.nombre = 'postre';-
/*5.- Devuelve un listado con los ingredientes utilizados en la receta 'Ensalada de Quinoa y Verduras', junto con su cantidad y unidad.*/
select i.nombre, ri.cantidad, ri.unidad from recetas_ingredientes ri, ingredientes i where ri.idingredientes = i.idingredientes
and ri.recetas_id = (SELECT recetas_id FROM recetas WHERE titulo = 'Ensalada de Quinoa y Verduras');