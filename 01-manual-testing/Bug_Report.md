# Reporte de Incidencias (Bug Report)

## Bug #001: El precio total en la vista de Checkout no aplica el descuento del cupón promocional

- **ID de Incidencia:** BUG-CHK-001
- **Título:** Cálculo incorrecto del monto total al aplicar cupón de descuento "SUMMER20" en el Checkout.
- **Severidad:** Alta *(Afecta la transacción financiera del usuario)*.
- **Prioridad:** Alta *(Debe corregirse antes del próximo release)*.
- **Módulo:** Checkout / Pagos.
- **Reportado por:** Yanina Ortiz (Analista QA).
- **Fecha:** 21/09/2026.
- **Entorno de Prueba:** Windows 11, Google Chrome v122.0, Resolución 1920x1080.

---

### Precondiciones
1. El usuario está autenticado en la plataforma.
2. El usuario tiene al menos un producto en el carrito de compras.

---

### Pasos para Reproducir
1. Navegar al carrito de compras haciendo clic en el icono del carrito.
2. Hacer clic en el botón **"Checkout"**.
3. En el campo *"Cupón de descuento"*, ingresar el código `SUMMER20`.
4. Hacer clic en el botón **"Aplicar"**.
5. Observar el desglose del precio total al final del formulario.

---

### Resultado Esperado
El sistema debe aplicar un 20% de descuento sobre el subtotal y reflejar el monto final restado en el indicador **"Total a Pagar"**.

---

### Resultado Obtenido
El sistema muestra el mensaje *"Cupón aplicado con éxito"*, pero el valor del **"Total a Pagar"** se mantiene igual al subtotal original sin descontar el 20%.

---

### Criterios de Aceptación Impactados
- **CA-CHK-004:** Toda promoción activa debe restar el porcentaje correspondiente al saldo total antes de procesar el pago.

---

### Evidencias / Capturas de Pantalla
> *Adjuntar captura de pantalla del desglose del carrito resaltando la diferencia entre el subtotal y el total calculado.*