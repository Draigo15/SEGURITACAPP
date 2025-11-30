# Script para crear Issues del Sprint 2 (Issues #10-#17)
# Sprint 2: Módulo de Reportes

Write-Host "🚀 Creando Issues del Sprint 2: Módulo de Reportes..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #10: Diseñar UI de creación de reporte..." -ForegroundColor Green
gh issue create `
    --title "Diseñar UI de pantalla de creación de reporte" `
    --body-file ".github/issues/issue10.md" `
    --assignee dannsotor

Write-Host "✅ Issue #10 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #11: Implementar geolocalización..." -ForegroundColor Green
gh issue create `
    --title "Implementar geolocalización automática" `
    --body-file ".github/issues/issue11.md" `
    --assignee Draigo15

Write-Host "✅ Issue #11 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #12: Implementar carga de imágenes..." -ForegroundColor Green
gh issue create `
    --title "Implementar carga de imágenes (máx 3)" `
    --body-file ".github/issues/issue12.md" `
    --assignee Draigo15

Write-Host "✅ Issue #12 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #13: Crear servicio de reportes..." -ForegroundColor Green
gh issue create `
    --title "Crear servicio de reportes en backend" `
    --body-file ".github/issues/issue13.md" `
    --assignee Draigo15

Write-Host "✅ Issue #13 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #14: Implementar validaciones..." -ForegroundColor Green
gh issue create `
    --title "Implementar validaciones de formulario" `
    --body-file ".github/issues/issue14.md" `
    --assignee dannsotor

Write-Host "✅ Issue #14 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #15: Guardar reportes en Firestore..." -ForegroundColor Green
gh issue create `
    --title "Guardar reportes en Firestore" `
    --body-file ".github/issues/issue15.md" `
    --assignee Draigo15

Write-Host "✅ Issue #15 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #16: Pantalla Mis Reportes..." -ForegroundColor Green
gh issue create `
    --title "Pantalla 'Mis Reportes' (ciudadano)" `
    --body-file ".github/issues/issue16.md" `
    --assignee dannsotor

Write-Host "✅ Issue #16 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #17: Testing módulo de reportes..." -ForegroundColor Green
gh issue create `
    --title "Testing de módulo de reportes" `
    --body-file ".github/issues/issue17.md" `
    --assignee Draigo15

Write-Host "✅ Issue #17 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 2 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #10-#17 (8 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #11, #12, #13, #15, #17 (5 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #10, #14, #16 (3 issues)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: feature, module: reports, priority: high, sprint-2" -ForegroundColor White
Write-Host "   - Milestone: Sprint 2: Módulo de Reportes" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
