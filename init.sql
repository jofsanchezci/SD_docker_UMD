CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

INSERT INTO clientes (nombre, correo)
VALUES ('Ana Pérez', 'ana@correo.com'),
       ('Luis Gómez', 'luis@correo.com');
