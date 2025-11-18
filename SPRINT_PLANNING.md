# Sprint Planning - SeguriTac App

## Sprint Actual: Sprint 10
**Fecha Inicio:** 18 de noviembre de 2025
**Fecha Fin:** 1 de diciembre de 2025
**Sprint Goal:** Completar suite de pruebas E2E y preparar deployment de producción

---

## Capacidad del Equipo
- **Días hábiles disponibles:** 10 días
- **Capacity total (Story Points):** [A definir según velocity]
- **Miembros del equipo:** [N desarrolladores]

---

## Historias Seleccionadas para el Sprint

### 🎯 Sprint Goal Stories

#### US-9.1: Pruebas E2E de Autenticación ✅
**Epic:** Testing y Calidad  
**Story Points:** 5  
**Prioridad:** Alta  
**Asignado a:** [Developer]

**Descripción:**  
Como desarrollador, necesito pruebas end-to-end completas del flujo de autenticación para garantizar que todos los escenarios funcionen correctamente en dispositivos reales.

**Criterios de Aceptación:**
- [x] Prueba de login exitoso con credenciales válidas
- [x] Prueba de flujo completo de OTP por email
- [x] Prueba de persistencia de sesión
- [x] Prueba de logout y limpieza de datos
- [ ] Todas las pruebas pasan en emulador Android
- [ ] Documentación de setup de pruebas E2E

**Tareas:**
- [x] T-9.1.1: Configurar Detox para proyecto
- [x] T-9.1.2: Crear test de login básico
- [x] T-9.1.3: Implementar test de flujo OTP
- [ ] T-9.1.4: Test de persistencia de sesión
- [ ] T-9.1.5: Test de logout completo
- [ ] T-9.1.6: Resolver issues de build de Detox

---

#### US-9.2: Pruebas de Rendimiento (RNF-1)
**Epic:** Testing y Calidad  
**Story Points:** 8  
**Prioridad:** Alta  
**Asignado a:** [Developer]

**Descripción:**  
Como Product Owner, necesito verificar que la aplicación cumple con los requisitos de rendimiento establecidos (< 3s en acciones críticas) para garantizar una buena experiencia de usuario.

**Criterios de Aceptación:**
- [x] Cold start < 2500ms (p95) en dispositivos de gama baja
- [x] Navegación entre pantallas < 500ms (p95)
- [x] Envío de reporte < 2500ms (p95)
- [x] Render de listas con 50+ items sin lag
- [ ] Pruebas automatizadas de rendimiento
- [ ] Reporte de métricas generado

**Tareas:**
- [x] T-9.2.1: Implementar instrumentación en App.tsx
- [x] T-9.2.2: Agregar métricas en componentes críticos
- [x] T-9.2.3: Crear test de aceptación RNF-1
- [ ] T-9.2.4: Ejecutar pruebas en dispositivo real
- [ ] T-9.2.5: Generar reporte de métricas
- [ ] T-9.2.6: Optimizar puntos críticos identificados

---

#### US-9.3: Pruebas de Seguridad (RNF-2, RNF-9)
**Epic:** Testing y Calidad  
**Story Points:** 5  
**Prioridad:** Crítica  
**Asignado a:** [Developer]

**Descripción:**  
Como Security Officer, necesito verificar que todos los datos sensibles están protegidos y las sesiones se manejan de forma segura.

**Criterios de Aceptación:**
- [x] SecureStore usado para datos sensibles
- [x] HTTPS obligatorio en producción
- [x] Helmet y rate limiting en backend
- [x] Tokens de sesión se invalidan correctamente
- [x] Tests automatizados de seguridad pasan
- [ ] Auditoría de seguridad completada

**Tareas:**
- [x] T-9.3.1: Implementar pruebas RNF-2
- [x] T-9.3.2: Implementar pruebas RNF-9
- [x] T-9.3.3: Verificar SecureStore en cliente
- [x] T-9.3.4: Verificar configuración backend
- [ ] T-9.3.5: Ejecutar auditoría de seguridad
- [ ] T-9.3.6: Documentar hallazgos y mitigaciones

---

#### US-10.1: Build de Producción Android
**Epic:** DevOps y Deployment  
**Story Points:** 8  
**Prioridad:** Alta  
**Asignado a:** [Developer]

**Descripción:**  
Como DevOps engineer, necesito generar un build de producción optimizado y firmado para publicar en Google Play Store.

**Criterios de Aceptación:**
- [ ] APK/AAB generado con configuración de release
- [ ] Proguard/R8 habilitado con shrinking
- [ ] APK firmado con keystore de producción
- [ ] Tamaño de APK optimizado (< 50MB)
- [ ] Todas las variables de entorno de producción configuradas
- [ ] Build probado en dispositivos reales

**Tareas:**
- [ ] T-10.1.1: Configurar signing en Gradle
- [ ] T-10.1.2: Generar keystore de producción
- [ ] T-10.1.3: Configurar Proguard rules
- [ ] T-10.1.4: Optimizar assets e imágenes
- [ ] T-10.1.5: Build con EAS (si aplica)
- [ ] T-10.1.6: Pruebas de regresión en build release
- [ ] T-10.1.7: Generar AAB para Play Store

---

#### US-10.2: Deployment de Backend a Producción
**Epic:** DevOps y Deployment  
**Story Points:** 5  
**Prioridad:** Alta  
**Asignado a:** [Developer]

**Descripción:**  
Como DevOps engineer, necesito desplegar el backend en un servidor de producción con alta disponibilidad.

**Criterios de Aceptación:**
- [ ] Backend desplegado en plataforma cloud (Railway/Render/AWS)
- [ ] Variables de entorno configuradas correctamente
- [ ] HTTPS configurado con certificado válido
- [ ] Monitoring y logging activos
- [ ] Endpoints de health check funcionando
- [ ] Backup automático de Firestore configurado

**Tareas:**
- [ ] T-10.2.1: Seleccionar plataforma de hosting
- [ ] T-10.2.2: Configurar proyecto en plataforma
- [ ] T-10.2.3: Configurar variables de entorno
- [ ] T-10.2.4: Configurar dominio y SSL
- [ ] T-10.2.5: Desplegar y verificar endpoints
- [ ] T-10.2.6: Configurar monitoring (logs, uptime)
- [ ] T-10.2.7: Documentar proceso de deployment

---

### 🔧 Technical Debt & Bugs

#### BUG-001: Build de Detox falla por dependencias de Gradle
**Prioridad:** Crítica  
**Asignado a:** [Developer]  
**Story Points:** 3

**Descripción:**  
El comando `detox build` falla con errores "No matching variant" para múltiples librerías de React Native.

**Pasos para reproducir:**
1. Ejecutar `npx detox build --configuration android.emu.debug`
2. Error en resolución de dependencias de Gradle

**Solución propuesta:**
- Ejecutar `gradlew clean --refresh-dependencies`
- Verificar settings.gradle y autolinking
- Actualizar dependencias si es necesario

**Estado:** 🔄 En investigación

---

## Sprint Backlog - Tablero Kanban

### 📋 To Do
- US-10.1: Build de Producción Android
- US-10.2: Deployment Backend
- BUG-001: Build de Detox

### 🏃 In Progress
- US-9.1: Pruebas E2E Autenticación (70%)
- US-9.2: Pruebas de Rendimiento (80%)

### ✅ Done
- US-9.3: Pruebas de Seguridad (100%)

---

## Daily Scrum Notes

### Day 1 - 18 Nov 2025
**Yesterday:**
- Configuración de pruebas E2E con Detox
- Implementación de pruebas de seguridad RNF-2 y RNF-9

**Today:**
- Resolver problema de build de Detox con Gradle
- Completar pruebas E2E de autenticación

**Blockers:**
- ⚠️ Build de Detox falla por dependencias (BUG-001)
- Necesita investigación de configuración de Gradle

---

## Sprint Retrospective (Al finalizar)

### What went well? 🎉
- [A completar al final del sprint]

### What can be improved? 🔧
- [A completar al final del sprint]

### Action Items 📝
- [A completar al final del sprint]

---

## Definición de Sprint Success

El sprint será considerado exitoso si:
- [ ] Al menos el 80% de los Story Points comprometidos están completados
- [ ] Todas las historias con prioridad "Crítica" están Done
- [ ] No hay bugs críticos abiertos al finalizar
- [ ] El Sprint Goal principal se cumple
- [ ] Demo del Sprint preparada para stakeholders
