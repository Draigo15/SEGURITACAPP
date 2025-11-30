## 📝 Descripción
Implementar la funcionalidad completa de guardar reportes en Firestore con imágenes en Storage, manejando transacciones y rollback en caso de error.

## ✅ Criterios de Aceptación
- [ ] Subir imágenes a Firebase Storage primero
- [ ] Guardar reporte con URLs de imágenes en Firestore
- [ ] Manejar transacciones correctamente
- [ ] Rollback si falla alguna operación
- [ ] Mostrar progreso de carga al usuario
- [ ] Confirmar éxito con mensaje al usuario
- [ ] Limpiar formulario después de guardar
- [ ] Navegar a pantalla de confirmación

## 🔧 Tareas Técnicas
- [ ] Implementar uploadImages() en imageUploadService
- [ ] Integrar con servicio de reportes
- [ ] Manejar carga de múltiples imágenes
- [ ] Implementar barra de progreso
- [ ] Manejar errores y rollback
- [ ] Mostrar loading state durante guardado
- [ ] Navegar tras éxito
- [ ] Tests de integración

## 📎 Recursos
- Firebase Storage
- imageUploadService.ts
- reports.ts

## ⏱️ Estimación
8 Story Points / 7 horas

## 👤 Asignado
@Draigo15
