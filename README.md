# README - Proyecto SeguriTac

## 🛡️ Sistema de Seguridad Ciudadana

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0--RC-blue)
![React Native](https://img.shields.io/badge/React%20Native-0.76-61dafb)
![Expo](https://img.shields.io/badge/Expo-52-000020)
![Node](https://img.shields.io/badge/Node-18+-339933)
![License](https://img.shields.io/badge/license-MIT-green)

</div>

---

## 📖 Descripción

**SeguriTac** es una plataforma móvil integral para la gestión de incidentes de seguridad ciudadana que conecta a ciudadanos con autoridades de respuesta. La aplicación permite reportar incidentes georreferenciados con evidencia multimedia, mientras que las autoridades pueden gestionar, asignar y dar seguimiento en tiempo real, mejorando la respuesta y la percepción de seguridad en la comunidad.

### 🎯 Características Principales

#### Para Ciudadanos 👥
- ✅ Registro y autenticación segura (email/contraseña u OTP)
- 📍 Reporte de incidentes con geolocalización automática
- 📸 Adjuntar hasta 3 fotos por reporte
- 🔔 Notificaciones push de cambios de estado
- 📊 Seguimiento de reportes propios
- 🗺️ Visualización de incidentes en mapa
- 🤖 Chatbot inteligente para ayuda y consultas

#### Para Autoridades 👮
- 📋 Dashboard con métricas en tiempo real
- 🗺️ Mapa con todos los reportes activos
- 🔄 Gestión de estados de reportes
- 👥 Asignación de recursos
- 📈 Estadísticas y análisis de tendencias
- 📥 Exportación de datos (CSV/PDF)
- 🔥 Mapa de calor de incidentes

---

## 🏗️ Arquitectura del Sistema

```
┌─────────────────────────────────────────────────────────┐
│                   SeguriTac System                      │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  ┌─────────────┐     ┌──────────────┐     ┌─────────┐ │
│  │   Mobile    │────▶│   Backend    │────▶│Firebase │ │
│  │     App     │◀────│  (Node.js)   │◀────│Firestore│ │
│  │ React Native│     │   Express    │     │ Storage │ │
│  └─────────────┘     └──────────────┘     └─────────┘ │
│         │                    │                   │     │
│         │                    │                   │     │
│         ▼                    ▼                   ▼     │
│  ┌─────────────┐     ┌──────────────┐     ┌─────────┐ │
│  │   Mapbox    │     │     FCM      │     │  Ollama │ │
│  │    Maps     │     │Notifications │     │  LLaMA  │ │
│  └─────────────┘     └──────────────┘     └─────────┘ │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## 📁 Estructura del Repositorio

```
SeguridadAPP/
├── 📱 SeguridadCiudadanaApp/        # Aplicación móvil React Native
│   ├── src/
│   │   ├── components/             # Componentes reutilizables
│   │   ├── screens/                # Pantallas de la app
│   │   ├── navigation/             # Configuración de navegación
│   │   ├── services/               # Servicios (API, auth, storage)
│   │   ├── hooks/                  # Custom hooks
│   │   ├── utils/                  # Utilidades y helpers
│   │   └── config/                 # Configuración
│   ├── __tests__/                  # Suite de pruebas
│   ├── android/                    # Proyecto Android nativo
│   ├── e2e/                        # Pruebas E2E con Detox
│   └── docs/                       # Documentación técnica
│
├── 🔙 backend/                      # Servidor Node.js/Express
│   ├── index.js                    # Punto de entrada
│   ├── __tests__/                  # Tests del backend
│   └── serviceAccountKey.json      # Credenciales Firebase (no commit)
│
├── 📚 Documentación Scrum
│   ├── SCRUM_PRODUCT_BACKLOG.md    # Product Backlog
│   ├── SPRINT_PLANNING.md          # Planning actual
│   ├── USER_STORIES.md             # 40+ User Stories detalladas
│   ├── DEFINITION_OF_DONE.md       # DoD del equipo
│   └── DOCS_INDEX.md               # Índice de documentación
│
└── 📖 Documentación Técnica
    ├── Documentacion_RF_10_14.md   # Requerimientos funcionales
    ├── OLLAMA_SETUP.md             # Setup del chatbot
    └── README.md                   # Este archivo
```

---

## 🚀 Quick Start

### Prerrequisitos

- **Node.js** 18 o superior
- **npm** 9 o superior
- **Android Studio** (para emulador Android)
- **Expo CLI** (`npm install -g expo-cli`)
- **Firebase Account** (con proyecto configurado)
- **Mapbox Account** (token de API)

### Instalación

#### 1️⃣ Clonar el Repositorio
```bash
git clone https://github.com/Draigo15/SeguriTac.git
cd SeguridadAPP
```

#### 2️⃣ Instalar Dependencias de la App
```bash
cd SeguridadCiudadanaApp
npm install
```

#### 3️⃣ Instalar Dependencias del Backend
```bash
cd ../backend
npm install
```

#### 4️⃣ Configurar Variables de Entorno

**App Móvil:** Crear `.env` en `SeguridadCiudadanaApp/`
```env
FIREBASE_API_KEY=tu_api_key
FIREBASE_AUTH_DOMAIN=tu_dominio.firebaseapp.com
FIREBASE_PROJECT_ID=tu_proyecto_id
FIREBASE_STORAGE_BUCKET=tu_bucket.appspot.com
FIREBASE_MESSAGING_SENDER_ID=123456789
FIREBASE_APP_ID=1:123:web:abc123
GOOGLE_MAPS_API_KEY=tu_mapbox_token
```

**Backend:** Crear `.env` en `backend/`
```env
PORT=3000
FIREBASE_PROJECT_ID=tu_proyecto_id
ALLOWED_ORIGINS=http://localhost:8081,exp://192.168.1.x:8081
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=tu_email@gmail.com
SMTP_PASS=tu_password
SESSION_TTL_MINUTES=1440
```

#### 5️⃣ Configurar Firebase

1. Descargar `google-services.json` de Firebase Console
2. Colocar en `SeguridadCiudadanaApp/android/app/`
3. Descargar `serviceAccountKey.json` de Firebase Console
4. Colocar en `backend/`

### Ejecutar en Desarrollo

#### Terminal 1 - Backend
```bash
cd backend
node index.js
# Backend corriendo en http://localhost:3000
```

#### Terminal 2 - App Móvil
```bash
cd SeguridadCiudadanaApp
npx expo start
# Escanear QR con Expo Go o presionar 'a' para Android
```

---

## 🧪 Testing

### Tests Unitarios
```bash
cd SeguridadCiudadanaApp
npm test
```

### Tests de Integración
```bash
npm run test:ci
```

### Tests E2E (Detox)
```bash
# Build de la app
npm run e2e:build

# Ejecutar tests E2E
npm run e2e:test
```

### Coverage
```bash
npm test -- --coverage
```

**Cobertura Actual:** ~75% (líneas)

---

## 📦 Build de Producción

### Android APK/AAB

#### Con Gradle (local)
```bash
cd SeguridadCiudadanaApp/android
./gradlew assembleRelease
# APK en: android/app/build/outputs/apk/release/
```

#### Con EAS Build (recomendado)
```bash
# Instalar EAS CLI
npm install -g eas-cli

# Login
eas login

# Build
eas build --platform android --profile production
```

Ver guía completa en: [DEPLOYMENT.md](./SeguridadCiudadanaApp/DEPLOYMENT.md)

---

## 📊 Estado del Proyecto

### Progreso General
- **Completitud:** 90%
- **Épicas Completadas:** 9/12
- **User Stories:** 36/40 completadas
- **Tests:** 75% coverage

### Sprint Actual
- **Sprint:** 10
- **Goal:** Completar testing E2E y deployment a producción
- **Fecha Fin:** 1 de diciembre de 2025

### Próximos Hitos
- ✅ v1.0.0-RC: Release Candidate (actual)
- 🔄 v1.0.0: Release a producción (1 dic 2025)
- 📅 v1.1.0: Optimizaciones y mejoras UX (15 dic 2025)

---

## 🛠️ Stack Tecnológico

### Frontend (Mobile)
- **React Native** 0.76 - Framework móvil
- **Expo** 52 - Toolchain y servicios
- **TypeScript** - Type safety
- **React Navigation** 7 - Navegación
- **Mapbox** - Mapas y geolocalización
- **Expo Camera/ImagePicker** - Multimedia
- **React Native Chart Kit** - Gráficas

### Backend
- **Node.js** 18 - Runtime
- **Express** 5 - Framework web
- **Firebase Admin SDK** - Firestore y FCM
- **Nodemailer** - Envío de emails
- **Helmet** - Seguridad HTTP
- **Express Rate Limit** - Rate limiting

### Servicios
- **Firebase Firestore** - Base de datos NoSQL
- **Firebase Storage** - Almacenamiento de imágenes
- **Firebase Cloud Messaging** - Notificaciones push
- **Ollama** - LLM local para chatbot
- **Mapbox** - Mapas y geocoding

### Testing
- **Jest** - Testing framework
- **React Native Testing Library** - Component testing
- **Detox** - E2E testing
- **Supertest** - API testing

### DevOps
- **GitHub Actions** - CI/CD (pendiente)
- **EAS Build** - Cloud builds
- **Railway/Render** - Backend hosting (pendiente)

---

## 📚 Documentación

### 📖 Para Desarrolladores
- [Setup Completo](./SeguridadCiudadanaApp/README.md)
- [Guía de Contribución](./SeguridadCiudadanaApp/CONTRIBUTING.md)
- [Variables de Entorno](./SeguridadCiudadanaApp/ENVIRONMENT.md)
- [Deployment](./SeguridadCiudadanaApp/DEPLOYMENT.md)
- [Testing](./SeguridadCiudadanaApp/documentacion_pruebas.md)
- [Seguridad](./SeguridadCiudadanaApp/SECURITY.md)

### 📱 Configuración Específica
- [Mapbox Setup](./SeguridadCiudadanaApp/MAPBOX_SETUP.md)
- [Ollama Chatbot](./OLLAMA_SETUP.md)
- [Backend API](./backend/API.md)

### 📊 Gestión del Proyecto
- [Product Backlog](./SCRUM_PRODUCT_BACKLOG.md)
- [Sprint Planning](./SPRINT_PLANNING.md)
- [User Stories](./USER_STORIES.md)
- [Definition of Done](./DEFINITION_OF_DONE.md)
- [Índice de Docs](./DOCS_INDEX.md)

### 📐 Requerimientos
- [RF-10 a RF-14](./Documentacion_RF_10_14.md)
- [Requerimientos No Funcionales](./SeguridadCiudadanaApp/docs/REQUERIMIENTOS_NO_FUNCIONALES.md)
- [Tests de Aceptación RNF](./SeguridadCiudadanaApp/docs/TESTS_ACEPTACION_RNF.md)

### 👥 Para Usuarios
- [Manual de Usuario](./SeguridadCiudadanaApp/MANUAL_USUARIO.md)
- [Chatbot Inteligente](./SeguridadCiudadanaApp/CHATBOT_INTELIGENTE.md)

---

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Por favor:

1. Lee la [Guía de Contribución](./SeguridadCiudadanaApp/CONTRIBUTING.md)
2. Fork el repositorio
3. Crea una branch para tu feature (`git checkout -b feature/AmazingFeature`)
4. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
5. Push a la branch (`git push origin feature/AmazingFeature`)
6. Abre un Pull Request

---

## 🐛 Reportar Bugs

Si encuentras un bug, por favor:
1. Revisa si ya está reportado en [Issues](https://github.com/Draigo15/SeguriTac/issues)
2. Si no, crea un nuevo issue con:
   - Descripción clara del bug
   - Pasos para reproducir
   - Comportamiento esperado vs actual
   - Screenshots si aplica
   - Versión de la app y dispositivo

---

## 📝 Changelog

Ver [CHANGELOG.md](./SeguridadCiudadanaApp/CHANGELOG.md) para historial completo de cambios.

### [1.0.0-RC] - 2025-11-18

#### ✨ Agregado
- Sistema completo de autenticación con OTP
- CRUD de reportes con geolocalización
- Notificaciones push en tiempo real
- Mapas interactivos con filtros
- Chatbot inteligente con Ollama
- Dashboard de estadísticas
- Exportación de datos (CSV/PDF)
- Suite de pruebas completa

#### 🔒 Seguridad
- SecureStore para datos sensibles
- Helmet y rate limiting en backend
- Validación de sesiones con tokens opacos

#### 🐛 Corregido
- Problemas de persistencia de sesión
- Memory leaks en FlatList
- Crash en upload de imágenes grandes

---

## 👥 Equipo

### Roles Scrum
- **Product Owner:** [Nombre]
- **Scrum Master:** [Nombre]
- **Development Team:**
  - [Developer 1] - Full Stack
  - [Developer 2] - Frontend/Mobile
  - [Developer 3] - Backend/DevOps
  - [QA Engineer]

---

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Ver [LICENSE](./LICENSE) para más detalles.

---

## 📞 Contacto

- **Email:** [email@dominio.com]
- **GitHub:** [@Draigo15](https://github.com/Draigo15)
- **Issues:** [GitHub Issues](https://github.com/Draigo15/SeguriTac/issues)

---

## 🙏 Agradecimientos

- [Expo](https://expo.dev/) - Por la increíble plataforma de desarrollo
- [Firebase](https://firebase.google.com/) - Por los servicios backend
- [Mapbox](https://www.mapbox.com/) - Por los mapas interactivos
- [Ollama](https://ollama.ai/) - Por el LLM local
- [React Native Community](https://reactnative.dev/) - Por los excelentes recursos

---

<div align="center">

**⭐ Si este proyecto te fue útil, considera darle una estrella en GitHub ⭐**

Made with ❤️ by Team SeguriTac

</div>
