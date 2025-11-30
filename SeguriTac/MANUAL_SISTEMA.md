# Manual del Sistema – SeguridadCiudadanaApp

## Introducción
- Objetivo: facilitar el entendimiento funcional y técnico del sistema móvil para reportes y gestión de seguridad ciudadana.
- Alcance: aplicación Android (Expo/React Native), con soporte para roles de ciudadano y autoridad.
- Público: equipo de producto, desarrollo, QA y soporte.

## Arquitectura
- Plataforma: React Native `0.76.x` sobre Expo.
- Navegación: `@react-navigation/native-stack` definida en `src/navigation/AppNavigator.tsx` (src/navigation/AppNavigator.tsx:84).
- Backend: Firebase (Auth y Firestore) configurado en `src/services/firebase` y `src/config/appConfig.ts` (src/config/appConfig.ts:241).
- Almacenamiento local seguro: `secureStorage` (src/services/secureStorage).
- Servicios clave: notificaciones, ubicación, exportación de datos, mapa, chat.
- Configuración de la app: `app.config.js` con `extra` para variables (SeguriTac/app.config.js:1).
- Entorno: lectura de `extra` vía `env.ts` (SeguriTac/env.ts:1).

## Roles y Flujos
- Roles soportados: `ciudadano` y `autoridad`.
- Selector de rol y navegación a Login: definidos en el stack (src/navigation/AppNavigator.tsx:84).
- Autenticación:
  - Login por correo y contraseña con Firebase Auth (src/screens/LoginScreen.tsx:120).
  - Validación de rol en Firestore y almacenamiento seguro de sesión (src/screens/LoginScreen.tsx:201).
  - Control de conectividad con `@react-native-community/netinfo` (src/screens/LoginScreen.tsx:108).
  - Redirección según rol: `Home` para ciudadano, `AuthorityDashboard` para autoridad (src/navigation/AppNavigator.tsx:84).
- Carga de sesión al iniciar: `AuthLoadingScreen` revisa sesión y navega (src/screens/AuthLoadingScreen.tsx:1).

## Pantallas Principales
- `LoginScreen`: formulario de acceso con validación y conectividad (src/screens/LoginScreen.tsx:64).
  - Elementos con `testID`: `login-email`, `login-password`, `login-submit` (src/screens/LoginScreen.tsx:347,372,394).
- `HomeScreen`: dashboard de ciudadano con menú lateral, estadísticas y acceso a cierre de sesión (src/screens/HomeScreen.tsx:76).
- `AuthorityDashboardScreen`: panel de autoridad con métricas y reportes recientes (src/screens/AuthorityDashboardScreen.tsx:25).
  - Visibilidad comprobable con `testID="dashboard-authority"` (src/screens/AuthorityDashboardScreen.tsx:241).
- `Report`, `MyReports`, `ViewAllReports`, `ReportDetail`: flujo de reporte y gestión (src/navigation/AppNavigator.tsx:84).
- `Notifications`, `AllReportsMap`/`MyReportsMap`: listados y mapa de reportes.
- `Settings`, `CitizenProfile`: configuración y perfil.

## Datos y Persistencia
- Firestore:
  - Colección `users` para datos del usuario y su rol (src/screens/AuthorityDashboardScreen.tsx:47).
  - Colección `reports` para reportes, estados y métricas (src/screens/AuthorityDashboardScreen.tsx:74).
- Almacenamiento seguro:
  - Token/usuario: claves en `appConfig.app.storage.keys` (src/config/appConfig.ts:241).
  - Uso en login y verificación de sesión.

## Permisos y Servicios
- Ubicación: `expo-location` para geolocalización en reportes y detalles (src/screens/ReportDetailScreen.tsx:48).
- Cámara y multimedia: `expo-camera` y `expo-media-library` para captura/adjuntos.
- Notificaciones push: `expo-notifications` y registro de token (src/screens/LoginScreen.tsx:39).
- Mapas: `react-native-maps` y utilidades relacionadas.

## Errores y Estados
- Manejo de errores de Auth y Firestore con toasts (`react-native-toast-message`) (src/screens/LoginScreen.tsx:64).
- Estado sin conexión: bloqueo de login y mensajes de advertencia (src/screens/LoginScreen.tsx:108).
- Reintentos y habilitación de red de Firestore: `enableFirestoreNetwork` (src/screens/LoginScreen.tsx:108).

## Navegación y Transiciones
- Stack de navegación con transiciones `fade`, `zoom`, `slide` (src/navigation/AppNavigator.tsx:84).
- Rutas clave: `AuthLoading`, `RoleSelector`, `Login`, `Register`, `Home`, `AuthorityDashboard`, etc. (src/navigation/AppNavigator.tsx:84).

## Pruebas
- Unitarias/Integración: `__tests__/` con Jest y Testing Library.
  - Ejemplos de flujo de auth y persistencia de sesión (`authFlow.integration.test.js`, `sessionPersistence.test.js`).
- E2E: Detox para Android.
  - Config: `.detoxrc.json` (SeguriTac/.detoxrc.json:1).
  - Test de login autoridad: `e2e/login.e2e.test.js` valida ingreso y dashboard (SeguriTac/e2e/login.e2e.test.js:1).
  - TestIDs usados para la automatización en `LoginScreen` y `AuthorityDashboard`.

## Configuración
- Variables en `app.config.js` → `extra` y `.env` (SeguriTac/app.config.js:1).
- Lectura en `env.ts` (SeguriTac/env.ts:1).
- Manual de instalación: ver `SeguriTac/INSTALACION.md`.

## Publicación
- Build local: Gradle (`assembleRelease`) con firmas.
- EAS Build: perfiles `preview` y `production`, secretos gestionados en la nube.

## Seguridad y Buenas Prácticas
- No exponer claves sensibles en el repositorio; usar `.env` y secretos de EAS.
- Usar `secureStorage` para sesión y datos del usuario.
- TestIDs estables para automatización y accesibilidad.
- Validar conectividad antes de operaciones críticas.

## Soporte y Troubleshooting
- Verificar `ANDROID_HOME`, `JAVA_HOME` y PATH.
- Emulador: iniciar AVD `Pixel_4` desde Android Studio si hay fallos.
- Dependencias: ejecutar `npm install` y limpiar Gradle con `gradlew clean` ante errores.
- iOS en Windows: no soportado; requiere macOS.

