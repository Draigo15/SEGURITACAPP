# Tablero Scrum - SeguriTac (Formato GitHub Projects / Jira)

## 📋 Backlog

### Epic 9: Testing y Calidad 🧪

#### US-9.3: Pruebas E2E con Detox [13 pts] 🔄 IN PROGRESS (70%)
**Labels:** `testing`, `e2e`, `priority:high`, `sprint-10`

**Descripción:**
Implementar suite completa de pruebas end-to-end usando Detox para validar flujos críticos en dispositivos/emuladores reales.

**Criterios de Aceptación:**
- [x] Configuración de Detox completada
- [ ] Test E2E de login y logout
- [ ] Test E2E de crear reporte
- [ ] Test E2E de ver notificaciones
- [ ] Ejecutable en CI/CD
- [ ] Documentación de setup

**Tareas:**
- [x] T-9.3.1: Configurar Detox y dependencias ✅
- [x] T-9.3.2: Configurar .detoxrc.json ✅
- [x] T-9.3.3: Test auth.fullflow.e2e.test.js ✅
- [ ] T-9.3.4: **🔥 BLOCKER: Resolver build de Detox (BUG-001)**
- [ ] T-9.3.5: Test de crear reporte E2E
- [ ] T-9.3.6: Test de notificaciones E2E
- [ ] T-9.3.7: Integrar en CI

**Asignado:** [Developer]  
**Sprint:** 10  
**Blocker:** BUG-001

---

### Epic 10: DevOps y Deployment 🚀

#### US-10.1: Build de Producción Android [8 pts] 📝 TODO
**Labels:** `devops`, `android`, `priority:critical`, `sprint-10`

**Descripción:**
Generar APK/AAB optimizado y firmado para publicación en Google Play Store.

**Criterios de Aceptación:**
- [ ] APK/AAB generado con configuración de release
- [ ] Proguard/R8 habilitado con shrinking
- [ ] APK firmado con keystore de producción
- [ ] Tamaño de APK optimizado (< 50MB)
- [ ] Variables de entorno de producción configuradas
- [ ] Build probado en dispositivos reales

**Tareas:**
- [ ] T-10.1.1: Configurar signing en Gradle
- [ ] T-10.1.2: Generar keystore de producción
- [ ] T-10.1.3: Configurar Proguard rules
- [ ] T-10.1.4: Optimizar assets e imágenes
- [ ] T-10.1.5: Build con EAS
- [ ] T-10.1.6: Pruebas de regresión en build release
- [ ] T-10.1.7: Generar AAB para Play Store

**Asignado:** [DevOps]  
**Sprint:** 10

---

#### US-10.2: Deployment Backend a Producción [5 pts] 📝 TODO
**Labels:** `devops`, `backend`, `priority:critical`, `sprint-10`

**Descripción:**
Desplegar backend Node.js en servidor productivo con monitoreo y alta disponibilidad.

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
- [ ] T-10.2.6: Configurar monitoring
- [ ] T-10.2.7: Documentar proceso

**Asignado:** [Backend Dev]  
**Sprint:** 10

---

#### US-10.3: Configuración de CI/CD [8 pts] 📝 TODO
**Labels:** `devops`, `ci-cd`, `priority:high`, `sprint-11`

**Descripción:**
Implementar pipeline automatizado para testing, building y deployment.

**Criterios de Aceptación:**
- [ ] GitHub Actions configurado
- [ ] CI ejecuta: lint, tests, build
- [ ] CD despliega automáticamente
- [ ] Notificaciones de éxito/fallo
- [ ] Rollback automático

**Tareas:**
- [ ] T-10.3.1: Crear workflow .github/workflows/ci.yml
- [ ] T-10.3.2: Jobs de lint, test, build
- [ ] T-10.3.3: Secrets configurados
- [ ] T-10.3.4: CD para backend
- [ ] T-10.3.5: CD para app con EAS
- [ ] T-10.3.6: Documentar

**Asignado:** [DevOps]  
**Sprint:** 11 (siguiente)

---

### Bugs y Issues 🐛

#### BUG-001: Build de Detox falla por dependencias de Gradle [3 pts] 🔥 CRITICAL
**Labels:** `bug`, `testing`, `blocker`, `priority:critical`

**Descripción:**
El comando `detox build` falla con errores "No matching variant" para múltiples librerías de React Native (async-storage, datetimepicker, netinfo, etc.).

**Pasos para reproducir:**
1. Ejecutar `npx detox build --configuration android.emu.debug`
2. Ver error en resolución de dependencias de Gradle

**Comportamiento esperado:**
Build de Detox se completa exitosamente y genera APK de pruebas.

**Comportamiento actual:**
```
FAILURE: Build failed with an exception.
Could not resolve all dependencies for configuration ':app:debugCompileClasspath'.
```

**Investigación realizada:**
- ✅ Ejecutado `gradlew clean --refresh-dependencies` - Resolvió algunas dependencias
- ✅ Ejecutado `gradlew assembleDebug` - APK principal compila OK
- ⏸️ Falta compilar `assembleAndroidTest` para Detox

**Solución propuesta:**
1. Compilar `gradlew assembleAndroidTest -DtestBuildType=debug`
2. Verificar packaging options en build.gradle para evitar conflictos
3. Actualizar configuración de Detox si es necesario

**Impacto:**
- Bloquea US-9.3 (Pruebas E2E)
- Impide ejecutar tests E2E en CI/CD

**Asignado:** [Developer]  
**Prioridad:** 🔥 Critical  
**Bloqueando:** US-9.3

---

#### BUG-002: [Ejemplo] Notificaciones no llegan en background [5 pts] 📝 TODO
**Labels:** `bug`, `notifications`, `priority:high`

[Placeholder para futuros bugs]

---

## 📊 Vista por Sprint

### Sprint 10 (18 Nov - 1 Dic 2025)

#### 🎯 Sprint Goal
"Completar suite de pruebas E2E y preparar deployment de producción"

#### 📈 Capacidad: ~30 Story Points

#### Stories Comprometidas:
- [🔄 70%] US-9.3: Pruebas E2E con Detox (13 pts)
- [📝 TODO] US-10.1: Build de Producción Android (8 pts)
- [📝 TODO] US-10.2: Deployment Backend (5 pts)
- [🔥 BLOCKER] BUG-001: Build de Detox (3 pts)

**Total:** 29 Story Points

#### Progreso:
```
░░░░░░░░░░░░░░░░░░░░ 0/29 pts (0%)
Day 1
```

---

### Sprint 11 (2 Dic - 15 Dic 2025) - Planificado

#### 🎯 Sprint Goal
"Publicar app en Play Store y configurar CI/CD"

#### Stories Candidatas:
- US-10.3: CI/CD (8 pts)
- US-10.4: Publicación Play Store (8 pts)
- US-11.1: Optimizaciones de rendimiento (5 pts)
- US-11.2: Mejoras UX (5 pts)
- Bug fixes y refinamiento

**Total Estimado:** ~30 Story Points

---

## 🔄 Estados y Workflow

### Columnas del Tablero Kanban:

```
📝 Backlog → 🔜 Ready → 🏃 In Progress → 👀 Review → ✅ Done
```

### Definición de Estados:

#### 📝 Backlog
- Story está definida pero no priorizada
- Criterios de aceptación completos
- No hay impedimentos conocidos

#### 🔜 Ready (Refinado)
- Story está refinada y estimada
- Priorizada para próximo sprint
- Equipo entiende los requisitos
- Dependencias identificadas

#### 🏃 In Progress
- Developer trabajando activamente
- Asignada a una persona
- Actualizado diariamente
- Máximo 2 stories por persona

#### 👀 In Review
- Code review en progreso
- Tests pasando
- Esperando aprobación
- No más de 3 stories en review

#### ✅ Done
- Cumple Definition of Done
- Product Owner aprueba
- Mergeado a branch principal
- Documentado

---

## 📌 Priorización (MoSCoW)

### 🔥 Must Have (Este Sprint)
1. BUG-001: Build de Detox (blocker)
2. US-10.1: Build de Producción Android
3. US-10.2: Deployment Backend
4. US-9.3: Completar Pruebas E2E

### ⚡ Should Have (Próximo Sprint)
1. US-10.3: CI/CD
2. US-10.4: Publicación Play Store
3. Optimizaciones de rendimiento

### 💡 Could Have (Futuros Sprints)
1. US-11.2: Mejoras UX
2. US-12.1: Integraciones externas
3. Dashboard web para autoridades

### ❌ Won't Have (v1.0)
1. App iOS nativa
2. Analítica predictiva avanzada
3. Integración con sistemas 911

---

## 📊 Métricas del Sprint

### Velocity
- **Sprint 8:** 28 pts completados
- **Sprint 9:** 32 pts completados
- **Velocity Promedio:** 30 pts
- **Sprint 10 Comprometido:** 29 pts ✅

### Burndown (Actualizar Diariamente)
```
Story Points Remaining
30│ ●
  │  ╲
25│   ●
  │    ╲
20│     ●
  │      ╲_____ Ideal
15│          ●
  │           ╲
10│            ●
  │             ╲
 5│              ●
  │               ╲
 0│________________●
  └─────────────────
   1  2  3  4  5  6  7  8  9 10
          Días del Sprint
```

### Cumulative Flow Diagram
```
Stories
6 │
  │           ┌─────── Done
5 │         ┌─┘
  │       ┌─┘ ┌─────── Review
4 │     ┌─┘ ┌─┘
  │   ┌─┘ ┌─┘ ┌─────── In Progress
3 │ ┌─┘ ┌─┘ ┌─┘
  │─┘ ┌─┘ ┌─┘ ┌─────── Ready
2 │ ┌─┘ ┌─┘ ┌─┘
  │─┘ ┌─┘ ┌─┘ ┌─────── Backlog
1 │ ┌─┘ ┌─┘ ┌─┘
  │─────────────────────
  └─────────────────────
   1  2  3  4  5  6  7  8  9 10
```

---

## 🏷️ Labels y Tags

### Por Tipo
- `feature` - Nueva funcionalidad
- `bug` - Corrección de error
- `enhancement` - Mejora de funcionalidad existente
- `refactor` - Refactorización de código
- `docs` - Documentación
- `test` - Testing

### Por Componente
- `frontend` - App móvil
- `backend` - Servidor
- `devops` - Infraestructura
- `database` - Firestore
- `ui/ux` - Interfaz de usuario

### Por Prioridad
- `priority:critical` - 🔥 Crítico (arreglar inmediatamente)
- `priority:high` - ⚡ Alto (este sprint)
- `priority:medium` - 📌 Medio (próximo sprint)
- `priority:low` - 💤 Bajo (backlog)

### Por Estado Especial
- `blocker` - 🚫 Bloquea otras tareas
- `ready-for-review` - 👀 Listo para revisión
- `needs-discussion` - 💬 Requiere discusión
- `on-hold` - ⏸️ En pausa
- `tech-debt` - 🏗️ Deuda técnica

### Por Epic
- `epic:auth` - Autenticación
- `epic:reports` - Sistema de reportes
- `epic:notifications` - Notificaciones
- `epic:maps` - Mapas
- `epic:chatbot` - Chatbot IA
- `epic:testing` - Testing
- `epic:devops` - DevOps

---

## 📅 Ceremonias Scrum

### Daily Scrum (Diario 9:00 AM)
**Duración:** 15 minutos

**Preguntas:**
1. ¿Qué hice ayer?
2. ¿Qué haré hoy?
3. ¿Tengo algún impedimento?

**Actualizar:**
- Estado de stories en tablero
- Notas en SPRINT_PLANNING.md

---

### Sprint Planning (Inicio de Sprint)
**Duración:** 2-4 horas

**Agenda:**
1. Review del Product Backlog
2. Selección de stories para el sprint
3. Definir Sprint Goal
4. Estimar y desglosar tareas
5. Comprometer capacity

**Resultado:**
- Sprint Backlog definido
- Sprint Goal acordado
- SPRINT_PLANNING.md actualizado

---

### Sprint Review/Demo (Fin de Sprint)
**Duración:** 1-2 horas

**Agenda:**
1. Demo de funcionalidades completadas
2. Feedback de stakeholders
3. Aceptación del Product Owner
4. Actualizar Product Backlog

**Preparar:**
- Demo en dispositivo real
- Screenshots/videos
- Métricas de rendimiento

---

### Sprint Retrospective (Fin de Sprint)
**Duración:** 1-1.5 horas

**Formato: Start, Stop, Continue**

**Preguntas:**
1. ¿Qué salió bien? 🎉
2. ¿Qué puede mejorar? 🔧
3. ¿Qué action items? 📝

**Resultado:**
- Action items para próximo sprint
- Actualizar RETROSPECTIVES.md

---

### Backlog Refinement (Mid-Sprint)
**Duración:** 1 hora semanal

**Actividades:**
1. Revisar y estimar nuevas stories
2. Dividir stories grandes
3. Aclarar criterios de aceptación
4. Ordenar por prioridad

**Meta:** 2 sprints de backlog refinado

---

## 🔗 Links Útiles

- **GitHub Repo:** https://github.com/Draigo15/SeguriTac
- **Project Board:** [Link a GitHub Projects]
- **Firebase Console:** [Link a proyecto Firebase]
- **Figma Designs:** [Link a diseños]
- **Slack/Teams:** [Link a canal del equipo]
- **CI/CD Dashboard:** [Link cuando esté configurado]

---

## 📝 Notas

### Convenciones del Equipo
- **Story Points:** Fibonacci (1, 2, 3, 5, 8, 13, 21)
- **Definition of Done:** Ver DEFINITION_OF_DONE.md
- **Branch naming:** `feature/US-X.Y-descripcion`, `bugfix/BUG-XXX-descripcion`
- **Commit messages:** Conventional Commits
- **Code review:** Mínimo 1 aprobación

### Horarios de Trabajo
- Daily Scrum: 9:00 AM
- Core hours: 9:00 AM - 5:00 PM
- Async work: Permitido fuera de core hours

### Comunicación
- **Urgente:** Slack/Teams (respuesta en 1h)
- **Normal:** GitHub Issues/PR (respuesta en 24h)
- **Async:** Email (respuesta en 48h)

---

**Última actualización:** 18 de noviembre de 2025  
**Mantenido por:** Scrum Master

---

## 🎨 Visualización del Tablero

```
┌─────────────────────────────────────────────────────────────────┐
│                     SPRINT 10 - KANBAN BOARD                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  📝 Backlog     🔜 Ready      🏃 In Progress   👀 Review   ✅ Done│
│  ┌─────────┐   ┌─────────┐   ┌─────────────┐  ┌──────┐  ┌────┐│
│  │         │   │ US-10.1 │   │  🔥 BUG-001 │  │      │  │    ││
│  │ US-10.3 │   │  [8pts] │   │   [3pts]    │  │      │  │    ││
│  │  [8pts] │   │         │   │             │  │      │  │    ││
│  │         │   │ Android │   │   Detox     │  │      │  │    ││
│  │         │   │  Build  │   │   Build     │  │      │  │    ││
│  └─────────┘   └─────────┘   └─────────────┘  └──────┘  └────┘│
│                │         │   │ US-9.3      │                   │
│                │ US-10.2 │   │  [13pts]    │                   │
│                │  [5pts] │   │  70% ████░  │                   │
│                │         │   │             │                   │
│                │ Backend │   │  E2E Tests  │                   │
│                │ Deploy  │   │             │                   │
│                └─────────┘   └─────────────┘                   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

