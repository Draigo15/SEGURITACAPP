# User Stories Detalladas - SeguriTac App

## Índice por Épicas
1. [Epic 1: Autenticación y Usuarios](#epic-1-autenticación-y-usuarios)
2. [Epic 2: Sistema de Reportes](#epic-2-sistema-de-reportes)
3. [Epic 3: Gestión de Estados](#epic-3-gestión-de-estados)
4. [Epic 4: Notificaciones](#epic-4-notificaciones)
5. [Epic 5: Mapas](#epic-5-mapas)
6. [Epic 6: Chatbot IA](#epic-6-chatbot-ia)
7. [Epic 7: Dashboard](#epic-7-dashboard)
8. [Epic 8: Exportación](#epic-8-exportación)
9. [Epic 9: Testing](#epic-9-testing)
10. [Epic 10: DevOps](#epic-10-devops)

---

## Epic 1: Autenticación y Usuarios

### US-1.1: Registro de Ciudadano ✅
**ID:** US-1.1  
**Prioridad:** Alta  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** ciudadano nuevo  
**Quiero** registrarme en la aplicación proporcionando mi información básica  
**Para** poder reportar incidentes de seguridad

**Criterios de Aceptación:**
- [x] El usuario puede ingresar: nombre, email, teléfono, dirección
- [x] Se valida formato de email y teléfono
- [x] La contraseña debe tener mínimo 8 caracteres
- [x] Se crea cuenta en Firebase Authentication
- [x] Se almacena perfil en Firestore (colección `users`)
- [x] Se muestra mensaje de éxito y redirige al login
- [x] Manejo de errores (email duplicado, red, etc.)

**Tareas Técnicas:**
- [x] T-1.1.1: Diseñar UI de pantalla de registro
- [x] T-1.1.2: Implementar validaciones de formulario
- [x] T-1.1.3: Integrar con Firebase Auth (`createUserWithEmailAndPassword`)
- [x] T-1.1.4: Crear documento en Firestore con rol "citizen"
- [x] T-1.1.5: Implementar manejo de errores
- [x] T-1.1.6: Pruebas unitarias

**Referencias:**
- Archivo: `src/screens/RegisterScreen.tsx`
- Servicio: `src/services/authService.ts`

---

### US-1.2: Login con Email y Contraseña ✅
**ID:** US-1.2  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** usuario registrado  
**Quiero** iniciar sesión con mi email y contraseña  
**Para** acceder a las funcionalidades de la aplicación

**Criterios de Aceptación:**
- [x] Usuario ingresa email y contraseña
- [x] Se valida formato de email
- [x] Se autentica con Firebase Auth
- [x] Se obtiene perfil y rol del usuario desde Firestore
- [x] Se almacena sesión localmente (SecureStore)
- [x] Redirección según rol (ciudadano → Home, autoridad → Dashboard)
- [x] Manejo de credenciales incorrectas

**Tareas Técnicas:**
- [x] T-1.2.1: Diseñar UI de login
- [x] T-1.2.2: Implementar `signInWithEmailAndPassword`
- [x] T-1.2.3: Obtener perfil de Firestore
- [x] T-1.2.4: Almacenar sesión en SecureStore
- [x] T-1.2.5: Implementar navegación condicional por rol
- [x] T-1.2.6: Tests de integración

**Referencias:**
- Archivo: `src/screens/LoginScreen.tsx`, `src/screens/LoginScreenRefactored.tsx`
- Servicio: `src/services/authService.ts`, `src/services/secureStorage.ts`

---

### US-1.3: Autenticación con OTP por Email ✅
**ID:** US-1.3  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** usuario  
**Quiero** iniciar sesión usando un código OTP enviado a mi email  
**Para** acceder de forma segura sin recordar contraseña

**Criterios de Aceptación:**
- [x] Usuario ingresa su email
- [x] Backend genera OTP aleatorio de 6 dígitos
- [x] OTP se hashea con SHA-256 y se guarda en Firestore con timestamp
- [x] OTP se envía por email (o se muestra en consola en DEV)
- [x] OTP expira en 10 minutos
- [x] Usuario ingresa código en la app
- [x] Backend valida OTP y genera token de sesión
- [x] Máximo 5 intentos de validación
- [x] Token de sesión se almacena en cliente y servidor

**Tareas Técnicas:**
- [x] T-1.3.1: Endpoint POST `/api/auth/email-otp/send`
- [x] T-1.3.2: Generación y hash de OTP
- [x] T-1.3.3: Integración con Nodemailer
- [x] T-1.3.4: Endpoint POST `/api/auth/email-otp/verify`
- [x] T-1.3.5: Validación de OTP y gestión de intentos
- [x] T-1.3.6: Generación de token de sesión opaco
- [x] T-1.3.7: UI de ingreso de OTP en app
- [x] T-1.3.8: Tests de backend
- [x] T-1.3.9: Tests de integración

**Referencias:**
- Backend: `backend/index.js` (rutas OTP)
- Cliente: `src/screens/OTPScreen.tsx`
- Docs: `backend/API.md`, `backend/SECURITY.md`

---

### US-1.4: Persistencia de Sesión ✅
**ID:** US-1.4  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** usuario  
**Quiero** que mi sesión se mantenga activa al cerrar y reabrir la app  
**Para** no tener que iniciar sesión cada vez

**Criterios de Aceptación:**
- [x] Sesión se guarda en SecureStore (o AsyncStorage en web/tests)
- [x] Al abrir la app, se verifica si existe sesión válida
- [x] Si existe, se valida token con backend
- [x] Si es válida, usuario va directo a Home/Dashboard
- [x] Si expiró, se redirige a login
- [x] AuthLoadingScreen mientras se valida

**Tareas Técnicas:**
- [x] T-1.4.1: Implementar `secureStorage.ts`
- [x] T-1.4.2: Crear AuthLoadingScreen
- [x] T-1.4.3: Endpoint GET `/api/auth/session/validate`
- [x] T-1.4.4: Lógica de validación en App.tsx
- [x] T-1.4.5: Tests de persistencia

**Referencias:**
- Cliente: `src/services/secureStorage.ts`, `src/screens/AuthLoadingScreen.tsx`
- Backend: `backend/index.js` (validación de sesión)
- Tests: `__tests__/sessionPersistence.test.js`

---

### US-1.5: Cierre de Sesión (RF-10) ✅
**ID:** US-1.5  
**Prioridad:** Alta  
**Story Points:** 3  
**Estado:** ✅ Completado

**Como** usuario autenticado  
**Quiero** cerrar sesión de forma segura  
**Para** proteger mi cuenta cuando no esté usando la app

**Criterios de Aceptación:**
- [x] Botón de logout en Sidebar/Profile
- [x] Se cierra sesión en Firebase Auth
- [x] Se elimina token y datos locales (SecureStore)
- [x] Token se invalida en backend
- [x] Usuario redirige a pantalla de login
- [x] No se puede volver atrás a pantallas protegidas

**Tareas Técnicas:**
- [x] T-1.5.1: Implementar función `handleLogout` en Sidebar
- [x] T-1.5.2: Llamar a `signOut(auth)`
- [x] T-1.5.3: Eliminar datos con `secureStorage.removeItem`
- [x] T-1.5.4: Endpoint POST `/api/auth/logout` en backend
- [x] T-1.5.5: `navigation.reset()` para limpiar stack
- [x] T-1.5.6: Tests de logout

**Referencias:**
- Cliente: `src/components/Sidebar.tsx`, `src/screens/ProfileScreen.js`
- Backend: `backend/index.js` (logout endpoint)
- Docs: `Documentacion_RF_10_14.md` (RF-10)

---

## Epic 2: Sistema de Reportes

### US-2.1: Crear Reporte de Incidente ✅
**ID:** US-2.1  
**Prioridad:** Crítica  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** crear un reporte de incidente con descripción, tipo, ubicación y fotos  
**Para** notificar a las autoridades sobre problemas de seguridad

**Criterios de Aceptación:**
- [x] Usuario puede ingresar título y descripción
- [x] Seleccionar tipo de incidente (robo, accidente, vandalismo, etc.)
- [x] Capturar ubicación GPS automáticamente
- [x] Adjuntar hasta 3 fotos desde cámara o galería
- [x] Validar que todos los campos obligatorios estén llenos
- [x] Guardar en Firestore con estado "pending"
- [x] Subir imágenes a Firebase Storage
- [x] Mostrar mensaje de confirmación
- [x] Tiempo de envío < 3 segundos (RNF-1)

**Tareas Técnicas:**
- [x] T-2.1.1: Diseñar UI de formulario de reporte
- [x] T-2.1.2: Integrar expo-location para GPS
- [x] T-2.1.3: Integrar expo-image-picker
- [x] T-2.1.4: Implementar validaciones
- [x] T-2.1.5: Servicio para subir imágenes a Storage
- [x] T-2.1.6: Guardar reporte en Firestore
- [x] T-2.1.7: Implementar indicador de carga
- [x] T-2.1.8: Tests de integración

**Referencias:**
- Cliente: `src/screens/ReportScreen.tsx`
- Servicio: `src/services/reportService.ts`, `src/services/storageService.ts`
- Tests: `__tests__/createReport.integration.test.js`

---

### US-2.2: Ver Mis Reportes ✅
**ID:** US-2.2  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** ver una lista de todos mis reportes  
**Para** dar seguimiento a su estado

**Criterios de Aceptación:**
- [x] Lista muestra reportes del usuario autenticado
- [x] Cada item muestra: título, tipo, estado, fecha
- [x] Estados con colores distintivos (pending/amarillo, in_progress/azul, resolved/verde)
- [x] Ordenados por fecha (más reciente primero)
- [x] Al tocar un reporte, se abre pantalla de detalle
- [x] Indicador de carga mientras se obtienen datos
- [x] Manejo de lista vacía

**Tareas Técnicas:**
- [x] T-2.2.1: Diseñar UI de lista
- [x] T-2.2.2: Query a Firestore filtrando por userId
- [x] T-2.2.3: Implementar FlatList con virtualización
- [x] T-2.2.4: Componente ReportCard
- [x] T-2.2.5: Navegación a detalle
- [x] T-2.2.6: Tests

**Referencias:**
- Cliente: `src/screens/MyReportsScreen.tsx`
- Componente: `src/components/ReportCard.tsx`
- Tests: `__tests__/viewMyReports.test.js`

---

### US-2.3: Ver Detalle de Reporte ✅
**ID:** US-2.3  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** usuario  
**Quiero** ver todos los detalles de un reporte específico  
**Para** conocer información completa y actualizaciones

**Criterios de Aceptación:**
- [x] Muestra toda la información: título, descripción, tipo, estado, fecha
- [x] Muestra ubicación en mapa pequeño
- [x] Galería de fotos adjuntas (zoom disponible)
- [x] Historial de cambios de estado
- [x] Información de autoridad asignada (si aplica)
- [x] Botón para compartir reporte
- [x] Ciudadano puede cancelar reporte si está pending

**Tareas Técnicas:**
- [x] T-2.3.1: Diseñar UI de detalle
- [x] T-2.3.2: Obtener reporte por ID desde Firestore
- [x] T-2.3.3: Integrar mini-mapa con Mapbox
- [x] T-2.3.4: Galería de imágenes
- [x] T-2.3.5: Línea de tiempo de estados
- [x] T-2.3.6: Función de compartir
- [x] T-2.3.7: Tests

**Referencias:**
- Cliente: `src/screens/ReportDetailScreen.tsx`
- Componente: `src/components/ReportTimeline.tsx`

---

### US-2.4: Cancelar Reporte ✅
**ID:** US-2.4  
**Prioridad:** Media  
**Story Points:** 3  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** cancelar un reporte que creé por error  
**Para** evitar uso innecesario de recursos

**Criterios de Aceptación:**
- [x] Solo reportes en estado "pending" pueden cancelarse
- [x] Mostrar diálogo de confirmación (RF-11)
- [x] Al confirmar, estado cambia a "cancelled"
- [x] Se envía notificación al ciudadano confirmando
- [x] No se puede deshacer la cancelación

**Tareas Técnicas:**
- [x] T-2.4.1: Botón "Cancelar Reporte" en detalle
- [x] T-2.4.2: Componente CancelReportDialog
- [x] T-2.4.3: Actualizar estado en Firestore
- [x] T-2.4.4: Enviar notificación
- [x] T-2.4.5: Tests

**Referencias:**
- Cliente: `src/screens/ReportDetailScreen.tsx`
- Componente: `src/components/CancelReportDialog.tsx`
- Docs: `Documentacion_RF_10_14.md` (RF-11)

---

## Epic 3: Gestión de Estados (Autoridades)

### US-3.1: Ver Todos los Reportes (Autoridad) ✅
**ID:** US-3.1  
**Prioridad:** Crítica  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** ver todos los reportes del sistema  
**Para** gestionar y asignar recursos

**Criterios de Aceptación:**
- [x] Lista muestra todos los reportes (no solo del usuario)
- [x] Filtros por estado (pending, in_progress, resolved)
- [x] Filtros por tipo de incidente
- [x] Filtros por zona/distrito
- [x] Búsqueda por texto
- [x] Ordenamiento por fecha, prioridad
- [x] Paginación o scroll infinito
- [x] Indicador de reportes nuevos/sin asignar

**Tareas Técnicas:**
- [x] T-3.1.1: Pantalla AllReportsScreen (autoridad)
- [x] T-3.1.2: Query sin filtro de userId
- [x] T-3.1.3: Implementar filtros múltiples
- [x] T-3.1.4: Componente de búsqueda
- [x] T-3.1.5: Optimizar queries con índices
- [x] T-3.1.6: Tests

**Referencias:**
- Cliente: `src/screens/AllReportsScreen.tsx`
- Tests: `__tests__/viewCitizenReports.test.js`, `__tests__/reportFilters.test.js`

---

### US-3.2: Cambiar Estado de Reporte ✅
**ID:** US-3.2  
**Prioridad:** Crítica  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** actualizar el estado de un reporte  
**Para** reflejar el progreso de atención

**Criterios de Aceptación:**
- [x] Autoridad puede cambiar estado: pending → in_progress → resolved
- [x] Requiere comentario obligatorio al cambiar estado
- [x] Se registra timestamp y autoridad que hizo el cambio
- [x] Se actualiza en Firestore
- [x] Se envía notificación push al ciudadano reportante
- [x] Se muestra en historial del reporte

**Tareas Técnicas:**
- [x] T-3.2.1: Componente ChangeStatusModal
- [x] T-3.2.2: Validar que usuario sea autoridad
- [x] T-3.2.3: Actualizar documento en Firestore
- [x] T-3.2.4: Agregar entrada a historial (subcollection o array)
- [x] T-3.2.5: Trigger de notificación push
- [x] T-3.2.6: Tests

**Referencias:**
- Cliente: `src/screens/ReportDetailScreen.tsx`
- Componente: `src/components/ChangeStatusModal.tsx`
- Backend: `backend/index.js` (endpoint notificación)
- Tests: `__tests__/changeReportStatus.test.js`

---

### US-3.3: Asignar Reporte a Autoridad ✅
**ID:** US-3.3  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** autoridad supervisor  
**Quiero** asignar un reporte a un agente específico  
**Para** distribuir la carga de trabajo

**Criterios de Aceptación:**
- [x] Lista de autoridades disponibles
- [x] Asignar autoridad a reporte
- [x] Campo `assignedTo` en documento de reporte
- [x] Notificación a autoridad asignada
- [x] Mostrar en dashboard quién tiene cada reporte

**Tareas Técnicas:**
- [x] T-3.3.1: Componente AssignAuthorityModal
- [x] T-3.3.2: Query para obtener usuarios con rol "authority"
- [x] T-3.3.3: Actualizar campo assignedTo
- [x] T-3.3.4: Notificación a asignado
- [x] T-3.3.5: Tests

**Referencias:**
- Cliente: `src/screens/ReportDetailScreen.tsx`
- Componente: `src/components/AssignAuthorityModal.tsx`

---

## Epic 4: Notificaciones

### US-4.1: Registro de Token FCM ✅
**ID:** US-4.1  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** sistema  
**Quiero** registrar el token FCM del dispositivo del usuario  
**Para** poder enviar notificaciones push

**Criterios de Aceptación:**
- [x] Al iniciar sesión, se obtiene token FCM
- [x] Token se envía a backend
- [x] Backend guarda token en Firestore (colección `fcmTokens`)
- [x] Token se asocia con userId
- [x] Manejo de errores si no se puede obtener token

**Tareas Técnicas:**
- [x] T-4.1.1: Configurar expo-notifications
- [x] T-4.1.2: Función para obtener token
- [x] T-4.1.3: Endpoint POST `/api/guardar-token`
- [x] T-4.1.4: Guardar en Firestore
- [x] T-4.1.5: Llamar al iniciar sesión
- [x] T-4.1.6: Tests

**Referencias:**
- Backend: `backend/index.js` (guardar-token)
- Cliente: `src/services/notificationService.ts`
- Docs: `backend/API.md`

---

### US-4.2: Notificación de Cambio de Estado ✅
**ID:** US-4.2  
**Prioridad:** Crítica  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** recibir notificación push cuando cambie el estado de mi reporte  
**Para** estar informado del progreso

**Criterios de Aceptación:**
- [x] Al cambiar estado, backend envía notificación push
- [x] Notificación incluye: título del reporte, nuevo estado
- [x] Usar Firebase Cloud Messaging (FCM)
- [x] Notificación aparece en bandeja del dispositivo
- [x] Al tocar notificación, abre detalle del reporte
- [x] Retry logic si falla envío

**Tareas Técnicas:**
- [x] T-4.2.1: Endpoint POST `/enviar-notificacion-estado`
- [x] T-4.2.2: Obtener token FCM del usuario
- [x] T-4.2.3: Construir payload de notificación
- [x] T-4.2.4: Enviar con firebase-admin
- [x] T-4.2.5: Manejar respuesta y errores
- [x] T-4.2.6: Deep linking en app
- [x] T-4.2.7: Tests

**Referencias:**
- Backend: `backend/index.js` (enviar-notificacion-estado)
- Cliente: `src/services/notificationService.ts`, `App.tsx` (deep links)
- Docs: `backend/API.md`

---

### US-4.3: Centro de Notificaciones ✅
**ID:** US-4.3  
**Prioridad:** Media  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** usuario  
**Quiero** ver un historial de mis notificaciones  
**Para** revisar actualizaciones anteriores

**Criterios de Aceptación:**
- [x] Pantalla NotificationsScreen
- [x] Lista de notificaciones ordenadas por fecha
- [x] Marcar como leída/no leída
- [x] Badge en ícono con cantidad de no leídas
- [x] Al tocar, navega al reporte correspondiente
- [x] Opción de eliminar notificación

**Tareas Técnicas:**
- [x] T-4.3.1: Diseñar UI de notificaciones
- [x] T-4.3.2: Guardar notificaciones en Firestore
- [x] T-4.3.3: Query ordenada por timestamp
- [x] T-4.3.4: Marcar como leída
- [x] T-4.3.5: Badge count
- [x] T-4.3.6: Tests

**Referencias:**
- Cliente: `src/screens/NotificationsScreen.tsx`
- Tests: `__tests__/notifications.test.js`

---

## Epic 5: Mapas y Geolocalización

### US-5.1: Mapa de Todos los Reportes ✅
**ID:** US-5.1  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** ver todos los reportes en un mapa interactivo  
**Para** visualizar distribución geográfica de incidentes

**Criterios de Aceptación:**
- [x] Mapa muestra pins por cada reporte
- [x] Colores de pins según estado
- [x] Al tocar pin, muestra info del reporte
- [x] Botón para ir a detalle
- [x] Filtros por tipo y estado aplicados al mapa
- [x] Zoom y pan funcionando
- [x] Rendimiento con 100+ reportes

**Tareas Técnicas:**
- [x] T-5.1.1: Configurar Mapbox SDK
- [x] T-5.1.2: Pantalla AllReportsMapScreen
- [x] T-5.1.3: Obtener reportes con location
- [x] T-5.1.4: Renderizar marcadores
- [x] T-5.1.5: Callout con info
- [x] T-5.1.6: Filtros
- [x] T-5.1.7: Optimización de rendimiento
- [x] T-5.1.8: Tests

**Referencias:**
- Cliente: `src/screens/AllReportsMapScreen.tsx`
- Docs: `MAPBOX_SETUP.md`
- Tests: `__tests__/allReportsMapScreen.test.js`

---

### US-5.2: Mapa de Calor de Incidentes ✅
**ID:** US-5.2  
**Prioridad:** Media  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** analista  
**Quiero** ver un mapa de calor con densidad de incidentes  
**Para** identificar zonas críticas

**Criterios de Aceptación:**
- [x] Heatmap overlay en mapa
- [x] Gradiente de colores (verde → amarillo → rojo)
- [x] Filtros por tipo y rango de fechas
- [x] Toggle entre vista de pins y heatmap
- [x] Actualización dinámica al cambiar filtros

**Tareas Técnicas:**
- [x] T-5.2.1: Pantalla IncidentHeatmapScreen
- [x] T-5.2.2: Procesar coordenadas para heatmap
- [x] T-5.2.3: Configurar layer de heatmap en Mapbox
- [x] T-5.2.4: Filtros de fecha y tipo
- [x] T-5.2.5: Toggle de vistas
- [x] T-5.2.6: Tests

**Referencias:**
- Cliente: `src/screens/IncidentHeatmapScreen.tsx`
- Tests: `__tests__/incidentHeatmapScreen.test.js`

---

### US-5.3: Geolocalización Automática ✅
**ID:** US-5.3  
**Prioridad:** Alta  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** que mi ubicación se capture automáticamente al crear reporte  
**Para** no tener que ingresarla manualmente

**Criterios de Aceptación:**
- [x] Solicitar permisos de ubicación al usuario
- [x] Obtener coordenadas GPS actuales
- [x] Mostrar dirección aproximada en formulario
- [x] Permitir ajustar ubicación en mapa si es necesaria
- [x] Manejo de errores (GPS desactivado, permisos denegados)
- [x] Fallback manual si no se puede obtener

**Tareas Técnicas:**
- [x] T-5.3.1: Solicitar permisos con expo-location
- [x] T-5.3.2: Función getCurrentPosition
- [x] T-5.3.3: Reverse geocoding (opcional)
- [x] T-5.3.4: UI para ajustar pin en mapa
- [x] T-5.3.5: Manejo de errores
- [x] T-5.3.6: Tests

**Referencias:**
- Cliente: `src/hooks/useLocation.tsx`
- Tests: `__tests__/geolocation.test.js`, `__tests__/useLocation.test.js`

---

## Epic 6: Chatbot Inteligente

### US-6.1: Chatbot con Ollama ✅
**ID:** US-6.1  
**Prioridad:** Media  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** ciudadano  
**Quiero** interactuar con un chatbot inteligente  
**Para** obtener ayuda sobre cómo reportar o consultar información

**Criterios de Aceptación:**
- [x] Pantalla de chat con interfaz conversacional
- [x] Conexión con Ollama (modelo LLaMA local)
- [x] Respuestas en contexto de seguridad ciudadana
- [x] Puede responder preguntas frecuentes
- [x] Puede guiar proceso de reporte
- [x] Puede consultar estadísticas básicas
- [x] Manejo de errores de conexión

**Tareas Técnicas:**
- [x] T-6.1.1: Configurar servidor Ollama
- [x] T-6.1.2: Pantalla ChatbotScreen
- [x] T-6.1.3: Componente de mensajes de chat
- [x] T-6.1.4: Servicio de integración con Ollama
- [x] T-6.1.5: Prompt engineering para contexto
- [x] T-6.1.6: Manejo de streaming de respuestas
- [x] T-6.1.7: Tests

**Referencias:**
- Cliente: `src/screens/ChatbotScreen.tsx`
- Servicio: `src/services/ollamaService.ts`
- Docs: `CHATBOT_INTELIGENTE.md`, `OLLAMA_SETUP.md`

---

### US-6.2: Análisis de Tendencias con IA ✅
**ID:** US-6.2  
**Prioridad:** Baja  
**Story Points:** 8  
**Estado:** ✅ Completado

**Como** analista  
**Quiero** que el chatbot analice tendencias de incidentes  
**Para** obtener insights automáticos

**Criterios de Aceptación:**
- [x] Chatbot puede consultar base de datos de reportes
- [x] Genera resúmenes de tendencias por tipo/zona/periodo
- [x] Identifica patrones (ej: aumentos en ciertas horas)
- [x] Respuestas en lenguaje natural
- [x] Gráficas generadas por IA (opcional)

**Tareas Técnicas:**
- [x] T-6.2.1: Extender prompts con capacidad de análisis
- [x] T-6.2.2: Funciones para consultar Firestore desde chatbot
- [x] T-6.2.3: Prompt para análisis de datos
- [x] T-6.2.4: Formateo de respuestas
- [x] T-6.2.5: Tests

**Referencias:**
- Cliente: `src/services/ollamaService.ts`
- Docs: `CHATBOT_INTELIGENTE.md`

---

## Epic 7: Dashboard y Estadísticas

### US-7.1: Dashboard de Autoridad ✅
**ID:** US-7.1  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** ver un dashboard con métricas clave  
**Para** tener visibilidad del estado general

**Criterios de Aceptación:**
- [x] Tarjetas con contadores: total reportes, pending, in_progress, resolved
- [x] Gráfica de reportes por tipo
- [x] Gráfica de reportes por estado
- [x] Tendencia temporal (últimos 30 días)
- [x] Top 5 zonas con más incidentes
- [x] Actualización en tiempo real (opcional)

**Tareas Técnicas:**
- [x] T-7.1.1: Pantalla DashboardScreen (autoridad)
- [x] T-7.1.2: Queries agregadas de Firestore
- [x] T-7.1.3: Componente StatsCard
- [x] T-7.1.4: Integrar react-native-chart-kit
- [x] T-7.1.5: Gráficas de barras y pie
- [x] T-7.1.6: Tests

**Referencias:**
- Cliente: `src/screens/DashboardScreen.tsx`
- Componente: `src/components/StatsCard.tsx`

---

### US-7.2: Estadísticas por Zona ✅
**ID:** US-7.2  
**Prioridad:** Media  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** filtrar estadísticas por zona/distrito  
**Para** analizar áreas específicas

**Criterios de Aceptación:**
- [x] Dropdown para seleccionar zona
- [x] Dashboard se actualiza con datos filtrados
- [x] Comparativa entre zonas
- [x] Exportar reporte por zona

**Tareas Técnicas:**
- [x] T-7.2.1: Componente ZonePicker
- [x] T-7.2.2: Filtrar queries por zona
- [x] T-7.2.3: Comparativa multi-zona
- [x] T-7.2.4: Tests

**Referencias:**
- Cliente: `src/screens/ReportStatsScreen.tsx`

---

### US-7.3: Exportación de Estadísticas ✅
**ID:** US-7.3  
**Prioridad:** Baja  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** exportar estadísticas en formato CSV/PDF  
**Para** presentar informes

**Criterios de Aceptación:**
- [x] Botón "Exportar" en dashboard
- [x] Opciones: CSV, PDF
- [x] CSV incluye todos los datos en tabla
- [x] PDF incluye gráficas y tablas formateadas
- [x] Descarga o compartir archivo generado

**Tareas Técnicas:**
- [x] T-7.3.1: Servicio exportService.ts
- [x] T-7.3.2: Generar CSV con datos
- [x] T-7.3.3: Generar PDF con gráficas
- [x] T-7.3.4: Integrar expo-sharing
- [x] T-7.3.5: Tests

**Referencias:**
- Cliente: `src/services/exportService.ts`
- Pantalla: `src/screens/ReportStatsScreen.tsx`

---

## Epic 8: Exportación de Datos

### US-8.1: Exportar Reportes a CSV ✅
**ID:** US-8.1  
**Prioridad:** Media  
**Story Points:** 3  
**Estado:** ✅ Completado

**Como** analista  
**Quiero** exportar lista de reportes a CSV  
**Para** análisis externo en Excel

**Criterios de Aceptación:**
- [x] Botón de exportar en AllReportsScreen
- [x] CSV incluye: ID, título, tipo, estado, fecha, ubicación, ciudadano
- [x] Respeta filtros activos
- [x] Descarga o compartir archivo

**Tareas Técnicas:**
- [x] T-8.1.1: Función generateCSV
- [x] T-8.1.2: Formatear datos
- [x] T-8.1.3: Escribir archivo con expo-file-system
- [x] T-8.1.4: Compartir con expo-sharing
- [x] T-8.1.5: Tests

**Referencias:**
- Cliente: `src/services/exportService.ts`

---

### US-8.2: Exportar Estadísticas a PDF ✅
**ID:** US-8.2  
**Prioridad:** Baja  
**Story Points:** 5  
**Estado:** ✅ Completado

**Como** autoridad  
**Quiero** generar PDF con reporte ejecutivo  
**Para** presentaciones formales

**Criterios de Aceptación:**
- [x] PDF incluye logo, fecha, título
- [x] Secciones: resumen, gráficas, tabla de datos
- [x] Formato profesional
- [x] Opción de personalizar periodo

**Tareas Técnicas:**
- [x] T-8.2.1: Integrar librería de PDF (react-native-pdf, etc.)
- [x] T-8.2.2: Template de reporte
- [x] T-8.2.3: Insertar gráficas como imágenes
- [x] T-8.2.4: Generar y compartir
- [x] T-8.2.5: Tests

**Referencias:**
- Cliente: `src/services/exportService.ts`

---

## Epic 9: Testing y Calidad

### US-9.1: Suite de Pruebas Unitarias ✅
**ID:** US-9.1  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** desarrollador  
**Quiero** tener cobertura de pruebas unitarias ≥ 70%  
**Para** garantizar calidad del código

**Criterios de Aceptación:**
- [x] Tests para todos los componentes críticos
- [x] Tests para servicios (auth, reports, notifications)
- [x] Tests para hooks personalizados
- [x] Mocks de Firebase y APIs externas
- [x] Cobertura ≥ 70%
- [x] CI ejecuta tests automáticamente

**Tareas Técnicas:**
- [x] T-9.1.1: Configurar Jest y testing-library
- [x] T-9.1.2: Tests de componentes UI
- [x] T-9.1.3: Tests de servicios
- [x] T-9.1.4: Tests de hooks
- [x] T-9.1.5: Configurar coverage reports
- [x] T-9.1.6: Documentar en documentacion_pruebas.md

**Referencias:**
- Tests: `__tests__/components.test.js`, `__tests__/ui.test.js`, `__tests__/useForm.test.js`
- Config: `jest.config.js`, `jest.setup.js`
- Docs: `documentacion_pruebas.md`

---

### US-9.2: Pruebas de Integración ✅
**ID:** US-9.2  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** ✅ Completado

**Como** QA  
**Quiero** pruebas de flujos completos de usuario  
**Para** validar interacciones entre módulos

**Criterios de Aceptación:**
- [x] Test de flujo de autenticación completo
- [x] Test de crear y ver reporte
- [x] Test de cambio de estado por autoridad
- [x] Test de notificaciones
- [x] Todos pasan sin errores

**Tareas Técnicas:**
- [x] T-9.2.1: Test authFlow.integration.test.js
- [x] T-9.2.2: Test createReport.integration.test.js
- [x] T-9.2.3: Test reportFlow.integration.test.js
- [x] T-9.2.4: Mocks de Firestore y servicios
- [x] T-9.2.5: Ejecutar en CI

**Referencias:**
- Tests: `__tests__/authFlow.integration.test.js`, `__tests__/createReport.integration.test.js`

---

### US-9.3: Pruebas E2E con Detox 🔄
**ID:** US-9.3  
**Prioridad:** Alta  
**Story Points:** 13  
**Estado:** 🔄 En Progreso (70%)

**Como** QA  
**Quiero** pruebas end-to-end en dispositivos reales  
**Para** validar funcionalidad completa de la app

**Criterios de Aceptación:**
- [x] Configuración de Detox completada
- [ ] Test E2E de login y logout
- [ ] Test E2E de crear reporte
- [ ] Test E2E de ver notificaciones
- [ ] Ejecutable en CI/CD
- [ ] Documentación de setup

**Tareas Técnicas:**
- [x] T-9.3.1: Configurar Detox y dependencias
- [x] T-9.3.2: Configurar .detoxrc.json
- [x] T-9.3.3: Test auth.fullflow.e2e.test.js
- [ ] T-9.3.4: Resolver build de Detox (BUG-001)
- [ ] T-9.3.5: Test de crear reporte E2E
- [ ] T-9.3.6: Test de notificaciones E2E
- [ ] T-9.3.7: Integrar en CI

**Referencias:**
- Tests: `e2e/auth.fullflow.e2e.test.js`, `e2e/init.js`
- Config: `.detoxrc.json`, `e2e/jest.config.js`

---

### US-9.4: Pruebas de Aceptación RNF ✅
**ID:** US-9.4  
**Prioridad:** Crítica  
**Story Points:** 21  
**Estado:** ✅ Completado

**Como** Product Owner  
**Quiero** validar cumplimiento de requerimientos no funcionales  
**Para** asegurar calidad, seguridad y rendimiento

**Criterios de Aceptación:**
- [x] RNF-1: Rendimiento (< 3s acciones críticas)
- [x] RNF-2: Seguridad (SecureStore, HTTPS, helmet)
- [x] RNF-3: Usabilidad
- [x] RNF-4: Confiabilidad
- [x] RNF-5: Mantenibilidad
- [x] RNF-6: Portabilidad
- [x] RNF-7: Escalabilidad
- [x] RNF-8: Disponibilidad
- [x] RNF-9: Seguridad de Sesión
- [x] RNF-10: Accesibilidad
- [x] Tests automatizados para RNF críticos

**Tareas Técnicas:**
- [x] T-9.4.1: Test rnf1.acceptance.test.js (rendimiento)
- [x] T-9.4.2: Test rnf2.acceptance.test.js (seguridad)
- [x] T-9.4.3: Test rnf3.acceptance.test.js (usabilidad)
- [x] T-9.4.4: Test rnf4-8 (confiabilidad, mantenibilidad, etc.)
- [x] T-9.4.5: Test rnf9.acceptance.test.js (sesión)
- [x] T-9.4.6: Test rnf10.accessibility.acceptance.test.js
- [x] T-9.4.7: Documentar en REQUERIMIENTOS_NO_FUNCIONALES.md

**Referencias:**
- Tests: `__tests__/rnf1.acceptance.test.js` hasta `rnf10.accessibility.acceptance.test.js`
- Docs: `docs/REQUERIMIENTOS_NO_FUNCIONALES.md`, `docs/TESTS_ACEPTACION_RNF.md`

---

## Epic 10: DevOps y Deployment

### US-10.1: Configuración de CI/CD 🔄
**ID:** US-10.1  
**Prioridad:** Alta  
**Story Points:** 8  
**Estado:** 🔄 Pendiente

**Como** DevOps  
**Quiero** pipeline automatizado de CI/CD  
**Para** despliegues rápidos y seguros

**Criterios de Aceptación:**
- [ ] GitHub Actions configurado
- [ ] CI ejecuta: lint, tests, build
- [ ] CD despliega automáticamente a entornos
- [ ] Notificaciones de éxito/fallo
- [ ] Rollback automático si falla

**Tareas Técnicas:**
- [ ] T-10.1.1: Crear workflow .github/workflows/ci.yml
- [ ] T-10.1.2: Jobs de lint, test, build
- [ ] T-10.1.3: Secrets configurados
- [ ] T-10.1.4: CD para backend (Railway/Render)
- [ ] T-10.1.5: CD para app (EAS Build)
- [ ] T-10.1.6: Documentar en DEPLOYMENT.md

**Referencias:**
- Docs: `DEPLOYMENT.md`, `backend/DEPLOYMENT.md`

---

### US-10.2: Build y Publicación Android 🔄
**ID:** US-10.2  
**Prioridad:** Crítica  
**Story Points:** 13  
**Estado:** 🔄 Pendiente

**Como** Product Manager  
**Quiero** publicar la app en Google Play Store  
**Para** que usuarios descarguen la app

**Criterios de Aceptación:**
- [ ] APK/AAB firmado y optimizado
- [ ] Subida a Google Play Console
- [ ] Metadata completa (título, descripción, screenshots)
- [ ] Política de privacidad publicada
- [ ] App aprobada y publicada
- [ ] Link de descarga funcional

**Tareas Técnicas:**
- [ ] T-10.2.1: Generar keystore producción
- [ ] T-10.2.2: Build release con EAS
- [ ] T-10.2.3: Crear cuenta de developer
- [ ] T-10.2.4: Preparar assets (ícono, screenshots)
- [ ] T-10.2.5: Escribir descripción de Play Store
- [ ] T-10.2.6: Subir AAB
- [ ] T-10.2.7: Pasar revisión de Google

**Referencias:**
- Docs: `DEPLOYMENT.md`
- Config: `eas.json`, `app.json`

---

### US-10.3: Deployment Backend Producción 🔄
**ID:** US-10.3  
**Prioridad:** Crítica  
**Story Points:** 8  
**Estado:** 🔄 Pendiente

**Como** Backend Engineer  
**Quiero** desplegar backend en servidor productivo  
**Para** dar servicio estable a la app

**Criterios de Aceptación:**
- [ ] Backend en Railway/Render/AWS
- [ ] Dominio personalizado con HTTPS
- [ ] Variables de entorno configuradas
- [ ] Monitoring con logs
- [ ] Health checks activos
- [ ] Backup de Firestore configurado

**Tareas Técnicas:**
- [ ] T-10.3.1: Crear cuenta en plataforma
- [ ] T-10.3.2: Conectar repo GitHub
- [ ] T-10.3.3: Configurar variables de entorno
- [ ] T-10.3.4: Configurar dominio y SSL
- [ ] T-10.3.5: Deploy y verificar endpoints
- [ ] T-10.3.6: Configurar monitoring
- [ ] T-10.3.7: Documentar

**Referencias:**
- Docs: `backend/DEPLOYMENT.md`, `backend/README.md`

---

## Resumen de Estado

### Por Prioridad
- **Crítica:** 9 stories (8 completadas, 1 en progreso)
- **Alta:** 19 stories (16 completadas, 3 pendientes)
- **Media:** 9 stories (todas completadas)
- **Baja:** 2 stories (ambas completadas)

### Por Estado
- ✅ **Completadas:** 36 stories
- 🔄 **En Progreso:** 1 story
- ⏸️ **Pendientes:** 3 stories

**Total:** 40 User Stories

---

## Notas Finales

Este documento es vivo y debe actualizarse conforme avanza el proyecto. Cada User Story debe tener:
- Estimación en Story Points
- Criterios de aceptación claros
- Tareas técnicas desglosadas
- Referencias a código y documentación
- Estado actualizado

Para agregar nuevas historias, seguir el formato establecido y actualizar los índices.
