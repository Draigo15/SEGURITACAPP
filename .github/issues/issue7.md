## 📝 Descripción
Implementar sistema de persistencia de sesión para que el usuario no tenga que iniciar sesión cada vez que abre la app. Usar AsyncStorage y Firebase onAuthStateChanged.

## ✅ Criterios de Aceptación
- [ ] Sesión persiste entre cierres de app
- [ ] Pantalla de carga (AuthLoadingScreen) al iniciar
- [ ] Verificar estado de autenticación con Firebase
- [ ] Cargar datos de usuario desde Firestore
- [ ] Navegación automática a pantalla correcta según rol
- [ ] Botón de logout funcional
- [ ] Token de sesión manejado de forma segura

## 🔧 Tareas Técnicas
- [ ] Crear AuthLoadingScreen.tsx
- [ ] Implementar onAuthStateChanged listener
- [ ] Guardar datos en AsyncStorage/SecureStore
- [ ] Crear servicio secureStorage.ts
- [ ] Implementar logout con limpieza de datos
- [ ] Manejar expiración de sesión
- [ ] Agregar tests de persistencia

## 📎 Recursos
- expo-secure-store
- Firebase Auth Persistence

## ⏱️ Estimación
5 Story Points / 5 horas

## 👤 Asignado
@Draigo15
