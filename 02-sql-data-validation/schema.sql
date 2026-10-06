-- Creación de tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    estado VARCHAR(20) DEFAULT 'activo',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Creación de tabla de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    monto DECIMAL(10,2) NOT NULL,
    estado_pedido VARCHAR(20) DEFAULT 'pendiente',
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Inserción de datos de prueba
INSERT INTO usuarios (nombre, email, estado) VALUES
('Juan Pérez', 'juan.perez@example.com', 'activo'),
('Maria López', 'maria.lopez@example.com', 'activo'),
('Carlos Ruiz', 'carlos.ruiz@example.com', 'inactivo'),
('Ana Gómez', 'ana.gomez@example.com', 'bloqueado');

INSERT INTO pedidos (id_usuario, monto, estado_pedido) VALUES
(1, 150.50, 'completado'),
(1, 89.90, 'pendiente'),
(2, 210.00, 'completado');