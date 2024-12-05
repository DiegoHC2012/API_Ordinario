CREATE TABLE estudiantes(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(150) NOT NULL,
apellidos VARCHAR(200) NOT NULL,
email VARCHAR(100) NOT NULL,
matricula VARCHAR(100) NOT NULL,
edad INT NOT NULL,
semestre VARCHAR(10) NOT NULL,
usuario_creacio VARCHAR(100) NOT NULL,
fecha_creacion DATETIME NOT NULL
);

CREATE TABLE maestros(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(150) NOT NULL,
edad INT NOT NULL,
telefono BIGINT NOT NULL,
correo VARCHAR(100) NOT NULL,
usuario_creacio VARCHAR(100) NOT NULL,
fecha_creacion DATETIME NOT NULL
);

CREATE TABLE materias(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(150) NOT NULL,
profesor_id INT NOT NULL,
create_user VARCHAR(100) NOT NULL,
create_date DATETIME NOT NULL,
FOREIGN KEY(profesor_id) REFERENCES maestros(id)
);

CREATE TABLE calificaciones(
id INT PRIMARY KEY AUTO_INCREMENT,
estudiante_id INT NOT NULL,
maestro_id INT NOT NULL,
materia_id INT NOT NULL,
create_user VARCHAR(100) NOT NULL,
create_date DATETIME NOT NULL,
FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
FOREIGN KEY (maestro_id) REFERENCES maestros(id),
FOREIGN KEY (materia_id) REFERENCES materias(id)
);