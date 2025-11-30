# Script para crear Issues del Sprint 4 (Issues #26-#33)
# Sprint 4: Mapas & Geolocalización

Write-Host "🚀 Creando Issues del Sprint 4: Mapas & Geolocalización..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #26: Integrar Mapbox/Google Maps..." -ForegroundColor Green
gh issue create `
    --title "Integrar Mapbox/Google Maps" `
    --body-file ".github/issues/issue26.md" `
    --assignee Draigo15

Write-Host "✅ Issue #26 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #27: Mostrar reportes en mapa (ciudadano)..." -ForegroundColor Green
gh issue create `
    --title "Mostrar reportes en mapa (ciudadano)" `
    --body-file ".github/issues/issue27.md" `
    --assignee Draigo15

Write-Host "✅ Issue #27 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #28: Mostrar todos los reportes (autoridad)..." -ForegroundColor Green
gh issue create `
    --title "Mostrar todos los reportes en mapa (autoridad)" `
    --body-file ".github/issues/issue28.md" `
    --assignee Draigo15

Write-Host "✅ Issue #28 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #29: Clustering de marcadores..." -ForegroundColor Green
gh issue create `
    --title "Implementar clustering de marcadores" `
    --body-file ".github/issues/issue29.md" `
    --assignee Draigo15

Write-Host "✅ Issue #29 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #30: Mapa de calor..." -ForegroundColor Green
gh issue create `
    --title "Mapa de calor (heatmap) de incidentes" `
    --body-file ".github/issues/issue30.md" `
    --assignee Draigo15

Write-Host "✅ Issue #30 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #31: Filtros en mapa..." -ForegroundColor Green
gh issue create `
    --title "Filtros en mapa por tipo de incidente" `
    --body-file ".github/issues/issue31.md" `
    --assignee dannsotor

Write-Host "✅ Issue #31 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #32: Optimización de rendimiento..." -ForegroundColor Green
gh issue create `
    --title "Optimización de rendimiento en mapas" `
    --body-file ".github/issues/issue32.md" `
    --assignee Draigo15

Write-Host "✅ Issue #32 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #33: Testing de mapas..." -ForegroundColor Green
gh issue create `
    --title "Testing de funcionalidades de mapa" `
    --body-file ".github/issues/issue33.md" `
    --assignee Draigo15

Write-Host "✅ Issue #33 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 4 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #26-#33 (8 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #26, #27, #28, #29, #30, #32, #33 (7 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #31 (1 issue)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: feature, module: maps, priority: high, sprint-4" -ForegroundColor White
Write-Host "   - Milestone: Sprint 4: Mapas & Geolocalización" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
