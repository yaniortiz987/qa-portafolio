# Casos de Prueba Funcionales - SauceDemo

## Módulo 1: Autenticación (Login)

### TC-LOG-001: Inicio de sesión exitoso (Happy Path)
- **Prioridad:** Alta
- **Precondiciones:** El usuario está en la página de inicio (`https://www.saucedemo.com`).
- **Pasos:**
  1. Ingresar `standard_user` en el campo *Username*.
  2. Ingresar `secret_sauce` en el campo *Password*.
  3. Hacer clic en el botón *Login*.
- **Resultado Esperado:** Redirección a la pantalla de inventario (`/inventory.html`) y visualización del catálogo de productos.
- **Estado:** Pasó (Passed)

---

### TC-LOG-002: Intento de inicio de sesión con contraseña incorrecta (Negative Test)
- **Prioridad:** Alta
- **Precondiciones:** El usuario está en la página de inicio.
- **Pasos:**
  1. Ingresar `standard_user` en el campo *Username*.
  2. Ingresar `wrong_password` en el campo *Password*.
  3. Hacer clic en el botón *Login*.
- **Resultado Esperado:** Permanece en la página actual y se muestra un mensaje de error: *"Epic sadface: Username and password do not match any user in this service"*.
- **Estado:** Pasó (Passed)

---

### TC-LOG-003: Intento de inicio de sesión con usuario bloqueado
- **Prioridad:** Media
- **Precondiciones:** El usuario está en la página de inicio.
- **Pasos:**
  1. Ingresar `locked_out_user` en el campo *Username*.
  2. Ingresar `secret_sauce` en el campo *Password*.
  3. Hacer clic en el botón *Login*.
- **Resultado Esperado:** Se muestra el mensaje de error: *"Epic sadface: Sorry, this user has been locked out"*.
- **Estado:** Pasó (Passed)

---

## Módulo 2: Carrito de Compras (Cart)

### TC-CRT-001: Agregar producto al carrito desde el catálogo
- **Prioridad:** Alta
- **Precondiciones:** Usuario autenticado correctamente en el sistema.
- **Pasos:**
  1. Ubicar el producto "Sauce Labs Backpack".
  2. Hacer clic en el botón *Add to cart*.
- **Resultado Esperado:** 
  - El botón cambia su estado a *Remove*.
  - El icono del carrito en la esquina superior derecha muestra el contador `1`.
- **Estado:** Pasó (Passed)

---

### TC-CRT-002: Remover producto del carrito
- **Prioridad:** Media
- **Precondiciones:** El usuario tiene 1 producto en el carrito.
- **Pasos:**
  1. Hacer clic en el icono del carrito para ir a `/cart.html`.
  2. Hacer clic en el botón *Remove* del producto.
- **Resultado Esperado:** El producto se elimina de la lista y el contador del carrito vuelve a estar vacío.
- **Estado:** Pasó (Passed)