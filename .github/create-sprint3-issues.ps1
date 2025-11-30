# Script para crear Issues del Sprint 3 (Issues #18-#25)
# Sprint 3: Dashboard Autoridades

Write-Host "🚀 Creando Issues del Sprint 3: Dashboard Autoridades..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #18: Diseñar dashboard de autoridad..." -ForegroundColor Green
gh issue create `
    --title "Diseñar dashboard de autoridad" `
    --body-file ".github/issues/issue18.md" `
    --assignee Draigo15

Write-Host "✅ Issue #18 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #19: Implementar métricas en tiempo real..." -ForegroundColor Green
gh issue create `
    --title "Implementar métricas en tiempo real" `
    --body-file ".github/issues/issue19.md" `
    --assignee Draigo15

Write-Host "✅ Issue #19 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #20: Pantalla de todos los reportes..." -ForegroundColor Green
gh issue create `
    --title "Pantalla de todos los reportes" `
    --body-file ".github/issues/issue20.md" `
    --assignee dannsotor

Write-Host "✅ Issue #20 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #21: Implementar cambio de estado..." -ForegroundColor Green
gh issue create `
    --title "Implementar cambio de estado de reportes" `
    --body-file ".github/issues/issue21.md" `
    --assignee Draigo15

Write-Host "✅ Issue #21 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #22: Sistema de asignación..." -ForegroundColor Green
gh issue create `
    --title "Sistema de asignación de reportes" `
    --body-file ".github/issues/issue22.md" `
    --assignee Draigo15

Write-Host "✅ Issue #22 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #23: Filtros por estado/tipo/fecha..." -ForegroundColor Green
gh issue create `
    --title "Filtros por estado/tipo/fecha" `
    --body-file ".github/issues/issue23.md" `
    --assignee dannsotor

Write-Host "✅ Issue #23 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #24: Implementar búsqueda de reportes..." -ForegroundColor Green
gh issue create `
    --title "Implementar búsqueda de reportes" `
    --body-file ".github/issues/issue24.md" `
    --assignee dannsotor

Write-Host "✅ Issue #24 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #25: Testing de dashboard..." -ForegroundColor Green
gh issue create `
    --title "Testing de dashboard" `
    --body-file ".github/issues/issue25.md" `
    --assignee Draigo15

Write-Host "✅ Issue #25 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 3 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #18-#25 (8 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #18, #19, #21, #22, #25 (5 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #20, #23, #24 (3 issues)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: feature, module: authority, priority: high, sprint-3" -ForegroundColor White
Write-Host "   - Milestone: Sprint 3: Dashboard Autoridades" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
