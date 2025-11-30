# Script para crear Issues del Sprint 6 (Issues #43-#53)
# Sprint 6: Testing & QA

Write-Host "🚀 Creando Issues del Sprint 6: Testing & QA..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #43: Configurar Jest..." -ForegroundColor Green
gh issue create `
    --title "Configurar Jest y React Native Testing Library" `
    --body-file ".github/issues/issue43.md" `
    --assignee dannsotor

Write-Host "✅ Issue #43 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #44: Tests unitarios de auth..." -ForegroundColor Green
gh issue create `
    --title "Tests unitarios - Servicios de auth" `
    --body-file ".github/issues/issue44.md" `
    --assignee Draigo15

Write-Host "✅ Issue #44 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #45: Tests unitarios de validaciones..." -ForegroundColor Green
gh issue create `
    --title "Tests unitarios - Validaciones" `
    --body-file ".github/issues/issue45.md" `
    --assignee dannsotor

Write-Host "✅ Issue #45 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #46: Tests de integración - Login..." -ForegroundColor Green
gh issue create `
    --title "Tests de integración - Flujo de login" `
    --body-file ".github/issues/issue46.md" `
    --assignee Draigo15

Write-Host "✅ Issue #46 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #47: Tests de integración - Reportes..." -ForegroundColor Green
gh issue create `
    --title "Tests de integración - Creación de reportes" `
    --body-file ".github/issues/issue47.md" `
    --assignee Draigo15

Write-Host "✅ Issue #47 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #48: Configurar Detox..." -ForegroundColor Green
gh issue create `
    --title "Configurar Detox para E2E" `
    --body-file ".github/issues/issue48.md" `
    --assignee Draigo15

Write-Host "✅ Issue #48 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #49: Tests E2E - Ciudadano..." -ForegroundColor Green
gh issue create `
    --title "Tests E2E - Flujo completo ciudadano" `
    --body-file ".github/issues/issue49.md" `
    --assignee Draigo15

Write-Host "✅ Issue #49 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #50: Tests E2E - Autoridad..." -ForegroundColor Green
gh issue create `
    --title "Tests E2E - Flujo completo autoridad" `
    --body-file ".github/issues/issue50.md" `
    --assignee Draigo15

Write-Host "✅ Issue #50 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #51: Tests de rendimiento..." -ForegroundColor Green
gh issue create `
    --title "Tests de rendimiento" `
    --body-file ".github/issues/issue51.md" `
    --assignee Draigo15

Write-Host "✅ Issue #51 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #52: Tests de accesibilidad..." -ForegroundColor Green
gh issue create `
    --title "Tests de accesibilidad" `
    --body-file ".github/issues/issue52.md" `
    --assignee dannsotor

Write-Host "✅ Issue #52 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #53: Corrección de bugs..." -ForegroundColor Green
gh issue create `
    --title "Corrección de bugs encontrados" `
    --body-file ".github/issues/issue53.md" `
    --assignee Draigo15

Write-Host "✅ Issue #53 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 6 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #43-#53 (11 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #44, #46, #47, #48, #49, #50, #51, #53 (8 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #43, #45, #52 (3 issues)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: testing, priority: critical, sprint-6" -ForegroundColor White
Write-Host "   - Milestone: Sprint 6: Testing & QA" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
