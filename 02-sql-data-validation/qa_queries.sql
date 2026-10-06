-- =======================================================
-- CONSULTAS DE VALIDACIÓN DE DATOS PARA TESTING QA
-- =======================================================

-- 1. Validar que los usuarios recién registrados se creen con el estado 'activo' por defecto
SELECT id_usuario, nombre, email, estado 
FROM usuarios 
WHERE estado = 'activo';

-- 2. Detectar usuarios registrados sin pedidos realizados (Posible escenario de inactividad)
SELECT u.id_usuario, u.nombre, u.email
FROM usuarios u
LEFT JOIN pedidos p ON u.id_usuario = p.id_usuario
WHERE p.id_pedido IS NULL;

-- 3. Verificar el total comprado acumulado por cada usuario activo (Validación de integraciones de pago)
SELECT u.id_usuario, u.nombre, SUM(p.monto) AS total_comprado
FROM usuarios u
INNER JOIN pedidos p ON u.id_usuario = p.id_usuario
WHERE p.estado_pedido = 'completado' AND u.estado = 'activo'
GROUP BY u.id_usuario, u.nombre;