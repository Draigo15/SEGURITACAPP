# Definition of Done (DoD) - SeguriTac

## 🎯 Definición Global de Done

Para que un User Story, tarea o incremento sea considerado **"Done"**, debe cumplir todos los criterios listados a continuación.

---

## 📋 Criterios Generales

### 1. Código y Desarrollo
- [ ] Código implementado cumple 100% de los criterios de aceptación
- [ ] Código sigue las convenciones de estilo del proyecto (ESLint, Prettier)
- [ ] Código está libre de comentarios TODO o FIXME no resueltos
- [ ] No hay código comentado innecesariamente
- [ ] No hay console.log en código de producción (solo desarrollo)
- [ ] Funciones y componentes tienen nombres descriptivos
- [ ] Código está modularizado y sigue principios SOLID
- [ ] No hay duplicación de código (DRY)

### 2. Testing y Calidad
- [ ] **Pruebas unitarias** escritas y pasando (cobertura ≥ 70%)
- [ ] **Pruebas de integración** implementadas para flujos críticos
- [ ] **Pruebas de regresión** ejecutadas sin fallos
- [ ] Todos los tests pasan en CI/CD
- [ ] No hay errores en consola del navegador/terminal
- [ ] No hay warnings críticos sin resolver
- [ ] Código pasa análisis estático (lint)
- [ ] No se introducen nuevos bugs conocidos

### 3. Documentación
- [ ] **Documentación técnica** actualizada en archivos .md relevantes
- [ ] **Comentarios JSDoc** en funciones públicas y complejas
- [ ] **README.md** actualizado si hay cambios en setup
- [ ] **CHANGELOG.md** actualizado con cambios del usuario
- [ ] Screenshots/GIFs agregados si hay cambios visuales
- [ ] Documentación de API actualizada (si aplica)

### 4. Code Review
- [ ] **Code review** completado por al menos 1 desarrollador
- [ ] Todos los comentarios del review están resueltos
- [ ] Aprobación explícita del reviewer
- [ ] No hay "Code Smells" señalados sin resolver

### 5. Integración
- [ ] Código mergeado a branch `develop` o `main` según política
- [ ] Sin conflictos de merge
- [ ] Build exitoso en CI/CD
- [ ] No rompe funcionalidad existente (regresión)

### 6. Funcionalidad
- [ ] Funciona correctamente en entorno de desarrollo
- [ ] Funciona correctamente en entorno de staging/QA
- [ ] Probado en dispositivo/emulador real (no solo navegador)
- [ ] Cumple con requisitos de UX/UI del diseño
- [ ] Flujo de usuario es intuitivo y completo

### 7. Seguridad
- [ ] No introduce vulnerabilidades conocidas
- [ ] Datos sensibles no se exponen en logs o código
- [ ] Validaciones de entrada implementadas (cliente y servidor)
- [ ] Autenticación/autorización funciona correctamente
- [ ] Cumple con políticas de seguridad del proyecto

### 8. Performance
- [ ] No introduce degradación de rendimiento
- [ ] Cumple con métricas de rendimiento establecidas (RNF-1)
- [ ] Queries optimizadas (sin N+1, con índices apropiados)
- [ ] Imágenes y assets optimizados
- [ ] Lazy loading implementado donde corresponde

### 9. Accesibilidad (si aplica)
- [ ] Componentes son accesibles (labels, roles ARIA)
- [ ] Navegación por teclado funciona
- [ ] Contraste de colores cumple estándares
- [ ] Screen readers pueden interpretar correctamente

### 10. Aceptación del Product Owner
- [ ] **Demostración al Product Owner** realizada
- [ ] Product Owner aprueba la funcionalidad
- [ ] Cumple con la visión y objetivos del producto
- [ ] Stakeholders relevantes notificados

---

## 🎨 DoD Específico por Tipo de Trabajo

### Para User Stories de Frontend (App Móvil)

#### Adicional a criterios generales:
- [ ] Probado en Android (mínimo API 26)
- [ ] Responsive en diferentes tamaños de pantalla (phone, tablet)
- [ ] Manejo de estados de carga implementado
- [ ] Manejo de errores con mensajes claros al usuario
- [ ] Navegación funciona correctamente
- [ ] Animaciones son suaves (60 fps)
- [ ] No hay memory leaks
- [ ] Funciona offline si corresponde

#### Tests Requeridos:
- Tests unitarios de componentes React
- Tests de hooks personalizados
- Tests de navegación
- Snapshot tests (opcional)

---

### Para User Stories de Backend (API)

#### Adicional a criterios generales:
- [ ] Endpoints documentados en `API.md`
- [ ] Request/Response schemas definidos
- [ ] Validación de inputs implementada
- [ ] Códigos de error HTTP apropiados
- [ ] Rate limiting configurado si es necesario
- [ ] Logs estructurados implementados
- [ ] Monitoreo configurado
- [ ] Variables de entorno documentadas

#### Tests Requeridos:
- Tests de endpoints (request/response)
- Tests de validaciones
- Tests de autenticación/autorización
- Tests de manejo de errores

---

### Para Tareas de Infraestructura/DevOps

#### Adicional a criterios generales:
- [ ] Scripts de deployment documentados
- [ ] Variables de entorno configuradas en todos los ambientes
- [ ] Rollback plan definido
- [ ] Monitoring y alertas configurados
- [ ] Backups configurados
- [ ] Documentación de troubleshooting

---

### Para Bugs/Fixes

#### Adicional a criterios generales:
- [ ] Causa raíz identificada y documentada
- [ ] Fix resuelve el problema sin efectos secundarios
- [ ] Test de regresión agregado para prevenir reaparición
- [ ] Verificado en ambiente donde se reportó
- [ ] Issue de GitHub/Jira cerrado con referencia al commit

---

## 🚀 DoD por Nivel

### Epic Done
Un Epic está Done cuando:
- [ ] Todas las User Stories del Epic están Done
- [ ] Funcionalidad completa es demostrable
- [ ] Documentación de alto nivel actualizada
- [ ] Métricas de éxito del Epic cumplidas

### Sprint Done
Un Sprint está Done cuando:
- [ ] Todas las User Stories comprometidas están Done
- [ ] Sprint Goal alcanzado
- [ ] Demo realizada con stakeholders
- [ ] Retrospectiva completada
- [ ] Product Backlog refinado para próximo sprint
- [ ] Velocity calculado y registrado

### Release Done
Un Release está Done cuando:
- [ ] Todos los Sprints incluidos están Done
- [ ] Build de producción generado y probado
- [ ] Deployment a producción exitoso
- [ ] Smoke tests en producción pasados
- [ ] Documentación de usuario actualizada
- [ ] Release notes publicadas
- [ ] Stakeholders notificados

---

## ⚠️ Excepciones y Deuda Técnica

### Cuando NO se puede cumplir un criterio:
1. Documentar explícitamente en el ticket
2. Justificar por qué no se puede cumplir
3. Crear ticket de **Deuda Técnica** para resolverlo después
4. Obtener aprobación del Product Owner y Scrum Master
5. Agregar a lista de deuda técnica del proyecto

### Deuda Técnica Aceptable:
- Documentación en idioma original (inglés) pendiente de traducción
- Tests E2E pendientes por configuración de ambiente
- Optimizaciones de performance no críticas
- Refactoring de código legacy funcional

### Deuda Técnica NO Aceptable:
- Bugs críticos o de seguridad
- Código sin tests
- Vulnerabilidades conocidas
- Funcionalidad incompleta
- Errores que impactan experiencia de usuario

---

## 📊 Checklist de Done por Sprint

### Inicio de Sprint
- [ ] Sprint Planning completado
- [ ] Stories estimadas y asignadas
- [ ] Todos entienden los criterios de aceptación
- [ ] Ambiente de desarrollo listo

### Durante Sprint
- [ ] Daily Scrum realizado diariamente
- [ ] Board actualizado diariamente
- [ ] Blockers identificados y escalados
- [ ] Code reviews hechos en <24h

### Fin de Sprint
- [ ] Todas las stories comprometidas Done
- [ ] Demo preparada
- [ ] Retrospectiva agendada
- [ ] Documentación actualizada

---

## 🔍 Verificación de Done

### ¿Quién verifica?
- **Developer:** Autocheck antes de marcar como Done
- **Peer Developer:** Durante code review
- **QA:** Testing funcional y regresión
- **Product Owner:** Aceptación final

### ¿Cuándo se verifica?
- **Continuamente:** Durante desarrollo (lint, tests)
- **Pre-merge:** Code review completo
- **Pre-demo:** QA completo
- **En demo:** Product Owner acepta

### Herramientas de Verificación:
- **CI/CD:** GitHub Actions (tests, lint, build)
- **Linters:** ESLint, Prettier
- **Testing:** Jest, Detox
- **Code Review:** GitHub Pull Requests
- **Manual:** Checklist físico o digital

---

## 📝 Template de Checklist

Copiar en cada Pull Request:

```markdown
## Definition of Done Checklist

### Código
- [ ] Cumple criterios de aceptación
- [ ] Sigue convenciones de estilo
- [ ] Sin TODOs no resueltos

### Testing
- [ ] Tests unitarios (≥70% coverage)
- [ ] Tests de integración
- [ ] Todos los tests pasan

### Documentación
- [ ] Docs técnicas actualizadas
- [ ] Comentarios JSDoc agregados
- [ ] CHANGELOG actualizado

### Code Review
- [ ] Revisado por [nombre]
- [ ] Comentarios resueltos
- [ ] Aprobado

### Funcionalidad
- [ ] Probado en dev
- [ ] Probado en dispositivo real
- [ ] Sin regresiones

### Seguridad
- [ ] Sin vulnerabilidades
- [ ] Validaciones implementadas
- [ ] Datos sensibles protegidos

### Aceptación
- [ ] Demo al PO realizada
- [ ] PO aprueba
```

---

## 🎯 Objetivos de la DoD

1. **Calidad consistente:** Todos entienden qué significa "terminado"
2. **Transparencia:** Stakeholders saben qué esperar
3. **Menos bugs:** Criterios estrictos previenen defectos
4. **Deuda técnica controlada:** Excepciones documentadas y rastreadas
5. **Equipo alineado:** Todos trabajan con los mismos estándares

---

## 📅 Revisión de la DoD

Esta Definition of Done debe revisarse y actualizarse:
- Al inicio de cada release
- En retrospectivas si hay problemas recurrentes
- Cuando el equipo madura y puede tener criterios más estrictos
- Cuando surgen nuevos requisitos o tecnologías

**Última revisión:** 18 de noviembre de 2025  
**Próxima revisión:** Al inicio del próximo release

---

## ✅ Acuerdo del Equipo

Todo el equipo Scrum (Product Owner, Scrum Master, Developers) debe acordar y comprometerse con esta Definition of Done.

**Firmas/Aprobación:**
- Product Owner: [Nombre] - [Fecha]
- Scrum Master: [Nombre] - [Fecha]
- Team Lead: [Nombre] - [Fecha]
- Developers: [Nombres] - [Fecha]
