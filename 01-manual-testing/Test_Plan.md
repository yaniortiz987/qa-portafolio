# Plan de Pruebas Funcionales - SauceDemo E-Commerce

## 1. Introducción
El presente documento define la estrategia, el alcance y los casos de prueba para validar la funcionalidad del flujo de compra y autenticación en la plataforma de comercio electrónico SauceDemo.

## 2. Alcance (Scope)
### Dentro del alcance:
- Módulo de Autenticación (Login / Logout).
- Catálogo de Productos (Filtros y ordenamiento).
- Carrito de Compras (Agregar/Remover items).
- Proceso de Checkout (Formulario de envío y confirmación).

### Fuera del alcance:
- Pruebas de rendimiento y carga (Performance Testing).
- Pruebas de seguridad automatizadas (DAST/SAST).

## 3. Tipos de Pruebas a Ejecutar
- **Pruebas Funcionales:** Validación de requerimientos del sistema.
- **Pruebas de Inserción de Errores (Negative Testing):** Validación de mensajes ante datos inválidos.
- **Pruebas de Usabilidad (UI/UX):** Verificación de elementos visuales y navegabilidad.

## 4. Criterios de Aceptación
- 0 bugs de severidad **Bloqueante** o **Alta** en producción.
- 100% de los casos de prueba del "Happy Path" ejecutados exitosamente.