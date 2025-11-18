# Documentación del Proyecto SeguriTac

## 📁 Estructura de Documentos

Este repositorio contiene toda la documentación técnica y de gestión del proyecto SeguriTac - Sistema de Seguridad Ciudadana.

---

## 🎯 Documentos de Gestión Scrum

### Principales
- **[SCRUM_PRODUCT_BACKLOG.md](./SCRUM_PRODUCT_BACKLOG.md)** - Product Backlog completo con épicas y priorización
- **[SPRINT_PLANNING.md](./SPRINT_PLANNING.md)** - Planning del sprint actual y retrospectivas
- **[USER_STORIES.md](./USER_STORIES.md)** - Detalle completo de todas las User Stories (40+)
- **[DEFINITION_OF_DONE.md](./DEFINITION_OF_DONE.md)** - Definición de Done global del equipo

### Secundarios
- **[TEAM_CHARTER.md](./TEAM_CHARTER.md)** - Acuerdos y normas del equipo Scrum
- **[RETROSPECTIVES.md](./RETROSPECTIVES.md)** - Historial de retrospectivas de sprints
- **[VELOCITY_TRACKING.md](./VELOCITY_TRACKING.md)** - Seguimiento de velocity y burndown

---

## 📱 Documentación de la Aplicación Móvil

### Ubicación: `SeguridadCiudadanaApp/`

#### Setup y Configuración
- **[README.md](./SeguridadCiudadanaApp/README.md)** - Guía principal de instalación y ejecución
- **[ENVIRONMENT.md](./SeguridadCiudadanaApp/ENVIRONMENT.md)** - Variables de entorno y configuración
- **[DEPLOYMENT.md](./SeguridadCiudadanaApp/DEPLOYMENT.md)** - Guía de deployment y builds
- **[MAPBOX_SETUP.md](./SeguridadCiudadanaApp/MAPBOX_SETUP.md)** - Configuración de Mapbox
- **[OLLAMA_SETUP.md](./OLLAMA_SETUP.md)** - Setup del chatbot con Ollama

#### Funcionalidades
- **[MANUAL_USUARIO.md](./SeguridadCiudadanaApp/MANUAL_USUARIO.md)** - Manual de usuario final
- **[CHATBOT_INTELIGENTE.md](./SeguridadCiudadanaApp/CHATBOT_INTELIGENTE.md)** - Documentación del chatbot IA
- **[CHANGELOG.md](./SeguridadCiudadanaApp/CHANGELOG.md)** - Historial de cambios

#### Desarrollo
- **[CONTRIBUTING.md](./SeguridadCiudadanaApp/CONTRIBUTING.md)** - Guía para contribuir
- **[SECURITY.md](./SeguridadCiudadanaApp/SECURITY.md)** - Políticas de seguridad
- **[documentacion_pruebas.md](./SeguridadCiudadanaApp/documentacion_pruebas.md)** - Documentación de testing

#### Requerimientos
- **[docs/REQUERIMIENTOS_NO_FUNCIONALES.md](./SeguridadCiudadanaApp/docs/REQUERIMIENTOS_NO_FUNCIONALES.md)** - RNF del sistema
- **[docs/TESTS_ACEPTACION_RNF.md](./SeguridadCiudadanaApp/docs/TESTS_ACEPTACION_RNF.md)** - Tests de aceptación
- **[Documentacion_RF_10_14.md](./Documentacion_RF_10_14.md)** - Requerimientos funcionales RF-10 a RF-14

#### Diagramas
- **[docs/diagramas_proceso.md](./SeguridadCiudadanaApp/docs/diagramas_proceso.md)** - Diagramas de flujo
- **[docs/diagramas_proceso_general.md](./SeguridadCiudadanaApp/docs/diagramas_proceso_general.md)** - Diagramas generales

---

## 🔙 Documentación del Backend

### Ubicación: `backend/`

#### Setup
- **[README.md](./backend/README.md)** - Guía de instalación del backend
- **[ENVIRONMENT.md](./backend/ENVIRONMENT.md)** - Variables de entorno
- **[DEPLOYMENT.md](./backend/DEPLOYMENT.md)** - Deployment en producción

#### API y Seguridad
- **[API.md](./backend/API.md)** - Documentación completa de endpoints
- **[SECURITY.md](./backend/SECURITY.md)** - Medidas de seguridad implementadas

---

## 🗂️ Organización de Archivos por Categoría

### 📋 Gestión de Proyecto
```
SCRUM_PRODUCT_BACKLOG.md
SPRINT_PLANNING.md
USER_STORIES.md
DEFINITION_OF_DONE.md
TEAM_CHARTER.md
RETROSPECTIVES.md
VELOCITY_TRACKING.md
```

### 🏗️ Arquitectura y Diseño
```
SeguridadCiudadanaApp/docs/diagramas_proceso.md
SeguridadCiudadanaApp/docs/diagramas_proceso_general.md
SeguridadCiudadanaApp/docs/README.md
```

### 📖 Requerimientos
```
Documentacion_RF_10_14.md
SeguridadCiudadanaApp/docs/REQUERIMIENTOS_NO_FUNCIONALES.md
SeguridadCiudadanaApp/docs/TESTS_ACEPTACION_RNF.md
```

### 🧪 Testing
```
SeguridadCiudadanaApp/documentacion_pruebas.md
SeguridadCiudadanaApp/docs/TESTS_ACEPTACION_RNF.md
```

### 🚀 Deployment
```
SeguridadCiudadanaApp/DEPLOYMENT.md
backend/DEPLOYMENT.md
```

### 🔐 Seguridad
```
SeguridadCiudadanaApp/SECURITY.md
backend/SECURITY.md
```

### 🛠️ Setup y Configuración
```
SeguridadCiudadanaApp/README.md
SeguridadCiudadanaApp/ENVIRONMENT.md
SeguridadCiudadanaApp/MAPBOX_SETUP.md
OLLAMA_SETUP.md
backend/README.md
backend/ENVIRONMENT.md
```

### 👥 Usuario Final
```
SeguridadCiudadanaApp/MANUAL_USUARIO.md
SeguridadCiudadanaApp/CHATBOT_INTELIGENTE.md
```

---

## 🎨 Convenciones de Documentación

### Formato de Nombres
- **Mayúsculas con guiones bajos:** Para documentos principales de gestión (`SCRUM_PRODUCT_BACKLOG.md`)
- **CamelCase:** Para documentos técnicos específicos (`ENVIRONMENT.md`)
- **Snake_case con minúsculas:** Para documentos internos (`documentacion_pruebas.md`)

### Estructura de Documentos
Todos los documentos MD deben incluir:
1. Título principal (H1)
2. Índice (para docs > 100 líneas)
3. Secciones claras (H2, H3)
4. Fecha de última actualización
5. Referencias cruzadas a otros documentos

### Ubicación de Archivos
- **Raíz del repo (`/`)**: Documentos de gestión Scrum y referencias generales
- **`SeguridadCiudadanaApp/`**: Todo lo relacionado con la app móvil
- **`backend/`**: Todo lo relacionado con el servidor
- **`SeguridadCiudadanaApp/docs/`**: Documentación técnica detallada (diagramas, RNF, etc.)

---

## 📊 Métricas y KPIs Documentados

### Cobertura de Documentación
- ✅ Product Backlog: 100%
- ✅ User Stories: 40 stories documentadas
- ✅ Requerimientos Funcionales: RF-10 al RF-14 documentados
- ✅ Requerimientos No Funcionales: RNF-1 al RNF-10 documentados
- ✅ API Endpoints: 100% documentados
- ✅ Testing: Suite completa documentada
- ⏸️ Diagramas UML: Parcial (en progreso)

### Calidad de Documentación
- **Claridad:** ⭐⭐⭐⭐⭐
- **Completitud:** ⭐⭐⭐⭐⭐
- **Actualización:** ⭐⭐⭐⭐☆ (última: 18 Nov 2025)
- **Accesibilidad:** ⭐⭐⭐⭐⭐

---

## 🔄 Proceso de Actualización

### Responsabilidades
- **Product Owner:** Actualiza SCRUM_PRODUCT_BACKLOG.md y priorización
- **Scrum Master:** Actualiza SPRINT_PLANNING.md y retrospectivas
- **Developers:** Actualizan documentación técnica y User Stories completadas
- **QA:** Actualiza documentacion_pruebas.md y tests de aceptación

### Frecuencia
- **Diaria:** SPRINT_PLANNING.md (Daily Scrum notes)
- **Semanal:** USER_STORIES.md (estado de stories)
- **Por Sprint:** RETROSPECTIVES.md, VELOCITY_TRACKING.md
- **Por Release:** CHANGELOG.md, version tags

### Control de Versiones
- Commits descriptivos para cambios en documentación
- Tag de versión en releases (`v1.0.0`)
- Branch `docs/` para cambios mayores en documentación

---

## 📞 Contacto y Contribución

Para contribuir a la documentación:
1. Leer [CONTRIBUTING.md](./SeguridadCiudadanaApp/CONTRIBUTING.md)
2. Seguir convenciones establecidas
3. Hacer PR con descripción clara
4. Solicitar revisión del equipo

---

## 📅 Última Actualización
**Fecha:** 18 de noviembre de 2025  
**Versión del Proyecto:** v1.0.0 RC  
**Actualizado por:** [Equipo SeguriTac]
