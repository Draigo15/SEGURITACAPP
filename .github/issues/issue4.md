## 📝 Descripción
Crear la pantalla de registro para nuevos usuarios con email y contraseña, incluyendo validaciones y creación de documento en Firestore.

## ✅ Criterios de Aceptación
- [ ] Pantalla de registro con campos: nombre, email, contraseña, confirmar contraseña
- [ ] Validaciones en tiempo real
- [ ] Contraseña debe cumplir requisitos de seguridad
- [ ] Crear usuario en Firebase Authentication
- [ ] Crear documento de usuario en Firestore
- [ ] Navegación automática tras registro exitoso
- [ ] Manejo de errores (email ya existe, etc.)

## 🔧 Tareas Técnicas
- [ ] Crear RegisterScreen.tsx
- [ ] Implementar validaciones (email válido, contraseña fuerte)
- [ ] Integrar con Firebase Authentication createUserWithEmailAndPassword
- [ ] Crear documento en colección users de Firestore
- [ ] Implementar manejo de errores
- [ ] Agregar tests unitarios de validaciones

## 📎 Recursos
- Validaciones en utils/validations.ts

## ⏱️ Estimación
5 Story Points / 5 horas

## 👤 Asignado
@dannsotor
