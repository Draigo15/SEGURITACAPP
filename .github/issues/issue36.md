## 📝 Descripción
Implementar notificaciones automáticas cuando el estado de un reporte cambia, informando al ciudadano creador del reporte.

## ✅ Criterios de Aceptación
- [ ] Notificación cuando reporte pasa a "en proceso"
- [ ] Notificación cuando reporte se marca como "resuelto"
- [ ] Notificación cuando se cierra el reporte
- [ ] Notificación cuando se asigna autoridad
- [ ] Mensaje descriptivo del cambio
- [ ] Navegar al reporte desde notificación
- [ ] Historial visible en la app
- [ ] Opción de desactivar por tipo

## 🔧 Tareas Técnicas
- [ ] Trigger en updateReportStatus()
- [ ] Enviar notificación al usuario creador
- [ ] Personalizar mensaje según estado
- [ ] Implementar navegación desde notificación
- [ ] Guardar notificaciones en Firestore
- [ ] Pantalla de historial de notificaciones
- [ ] Configuración de preferencias
- [ ] Tests de notificaciones de estado

## 📎 Recursos
- notificationService.ts
- Firebase Triggers

## ⏱️ Estimación
8 Story Points / 6 horas

## 👤 Asignado
@Draigo15
