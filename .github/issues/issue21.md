## 📝 Descripción
Implementar funcionalidad para que las autoridades puedan cambiar el estado de un reporte: pendiente → en proceso → resuelto → cerrado.

## ✅ Criterios de Aceptación
- [ ] Selector de estado en pantalla de detalle
- [ ] Estados: pendiente, en_proceso, resuelto, cerrado
- [ ] Solo autoridades pueden cambiar estado
- [ ] Actualizar estado en Firestore
- [ ] Enviar notificación al ciudadano del cambio
- [ ] Historial de cambios de estado
- [ ] Confirmación antes de cambiar estado
- [ ] Log de auditoría

## 🔧 Tareas Técnicas
- [ ] Crear componente StatusSelector
- [ ] Implementar updateReportStatus() en servicio
- [ ] Validar permisos de usuario
- [ ] Guardar historial en subcollection
- [ ] Trigger de notificación
- [ ] Implementar confirmación con diálogo
- [ ] Agregar log de auditoría
- [ ] Tests de cambio de estado

## 📎 Recursos
- Firestore subcollections
- Servicio de notificaciones

## ⏱️ Estimación
8 Story Points / 6 horas

## 👤 Asignado
@Draigo15
