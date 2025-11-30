# Script para crear Issues del Sprint 7 (Issues #54-#61)
# Sprint 7: Deployment & Docs

Write-Host "🚀 Creando Issues del Sprint 7: Deployment & Docs..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #54: Configurar EAS Build..." -ForegroundColor Green
gh issue create `
    --title "Configurar EAS Build" `
    --body-file ".github/issues/issue54.md" `
    --assignee Draigo15

Write-Host "✅ Issue #54 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #55: Generar APK de producción..." -ForegroundColor Green
gh issue create `
    --title "Generar APK de producción" `
    --body-file ".github/issues/issue55.md" `
    --assignee Draigo15

Write-Host "✅ Issue #55 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #56: Configurar variables de entorno..." -ForegroundColor Green
gh issue create `
    --title "Configurar variables de entorno" `
    --body-file ".github/issues/issue56.md" `
    --assignee dannsotor

Write-Host "✅ Issue #56 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #57: Manual de usuario..." -ForegroundColor Green
gh issue create `
    --title "Manual de usuario" `
    --body-file ".github/issues/issue57.md" `
    --assignee dannsotor

Write-Host "✅ Issue #57 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #58: Documentación técnica API..." -ForegroundColor Green
gh issue create `
    --title "Documentación técnica (API)" `
    --body-file ".github/issues/issue58.md" `
    --assignee Draigo15

Write-Host "✅ Issue #58 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #59: Documentación de deployment..." -ForegroundColor Green
gh issue create `
    --title "Documentación de deployment" `
    --body-file ".github/issues/issue59.md" `
    --assignee Draigo15

Write-Host "✅ Issue #59 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #60: README principal..." -ForegroundColor Green
gh issue create `
    --title "README principal del proyecto" `
    --body-file ".github/issues/issue60.md" `
    --assignee dannsotor

Write-Host "✅ Issue #60 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #61: Video demo..." -ForegroundColor Green
gh issue create `
    --title "Video demo de la aplicación" `
    --body-file ".github/issues/issue61.md" `
    --assignee dannsotor

Write-Host "✅ Issue #61 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 7 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #54-#61 (8 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #54, #55, #58, #59 (4 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #56, #57, #60, #61 (4 issues)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: deployment/documentation, priority: high, sprint-7" -ForegroundColor White
Write-Host "   - Milestone: Sprint 7: Deployment & Docs" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
Write-Host ""
Write-Host "🏆 ¡TODOS LOS SPRINTS COMPLETADOS! 61 issues creadas en total" -ForegroundColor Green
