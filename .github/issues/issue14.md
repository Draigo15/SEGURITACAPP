## 📝 Descripción
Implementar validaciones completas en el formulario de reporte: tipo de incidente requerido, descripción mínima, ubicación válida, y formato de imágenes correcto.

## ✅ Criterios de Aceptación
- [ ] Validar tipo de incidente seleccionado (requerido)
- [ ] Descripción mínimo 10 caracteres
- [ ] Descripción máximo 500 caracteres
- [ ] Ubicación debe estar presente
- [ ] Validar formato de imágenes (jpg, png)
- [ ] Validar tamaño máximo de imágenes (5MB)
- [ ] Mostrar mensajes de error claros
- [ ] Deshabilitar botón enviar si hay errores

## 🔧 Tareas Técnicas
- [ ] Crear validaciones en utils/validations.ts
- [ ] Implementar validación de tipo de incidente
- [ ] Validar longitud de descripción
- [ ] Validar coordenadas de ubicación
- [ ] Validar formato y tamaño de imágenes
- [ ] Integrar validaciones con useForm
- [ ] Mostrar errores en UI
- [ ] Tests unitarios de validaciones

## 📎 Recursos
- Hook useForm existente
- utils/validations.ts

## ⏱️ Estimación
3 Story Points / 3 horas

## 👤 Asignado
@dannsotor
