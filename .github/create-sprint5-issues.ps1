# Script para crear Issues del Sprint 5 (Issues #34-#42)
# Sprint 5: Notificaciones & Chat

Write-Host "🚀 Creando Issues del Sprint 5: Notificaciones & Chat..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #34: Configurar Firebase Cloud Messaging..." -ForegroundColor Green
gh issue create `
    --title "Configurar Firebase Cloud Messaging (FCM)" `
    --body-file ".github/issues/issue34.md" `
    --assignee Draigo15

Write-Host "✅ Issue #34 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #35: Implementar notificaciones push..." -ForegroundColor Green
gh issue create `
    --title "Implementar notificaciones push" `
    --body-file ".github/issues/issue35.md" `
    --assignee Draigo15

Write-Host "✅ Issue #35 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #36: Notificaciones de cambio de estado..." -ForegroundColor Green
gh issue create `
    --title "Notificaciones de cambio de estado" `
    --body-file ".github/issues/issue36.md" `
    --assignee Draigo15

Write-Host "✅ Issue #36 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #37: Sistema de permisos de notificaciones..." -ForegroundColor Green
gh issue create `
    --title "Sistema de permisos de notificaciones" `
    --body-file ".github/issues/issue37.md" `
    --assignee dannsotor

Write-Host "✅ Issue #37 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #38: Diseñar UI del chatbot..." -ForegroundColor Green
gh issue create `
    --title "Diseñar UI del chatbot" `
    --body-file ".github/issues/issue38.md" `
    --assignee dannsotor

Write-Host "✅ Issue #38 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #39: Implementar clasificador de intenciones..." -ForegroundColor Green
gh issue create `
    --title "Implementar clasificador de intenciones" `
    --body-file ".github/issues/issue39.md" `
    --assignee Draigo15

Write-Host "✅ Issue #39 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #40: Base de conocimiento del chatbot..." -ForegroundColor Green
gh issue create `
    --title "Base de conocimiento del chatbot" `
    --body-file ".github/issues/issue40.md" `
    --assignee dannsotor

Write-Host "✅ Issue #40 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #41: Integración con Ollama/LLM..." -ForegroundColor Green
gh issue create `
    --title "Integración con Ollama/LLM local" `
    --body-file ".github/issues/issue41.md" `
    --assignee Draigo15

Write-Host "✅ Issue #41 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #42: Testing de notificaciones y chat..." -ForegroundColor Green
gh issue create `
    --title "Testing de notificaciones y chat" `
    --body-file ".github/issues/issue42.md" `
    --assignee Draigo15

Write-Host "✅ Issue #42 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 5 han sido creadas!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #34-#42 (9 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #34, #35, #36, #39, #41, #42 (6 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #37, #38, #40 (3 issues)" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Recuerda agregar labels y milestone manualmente:" -ForegroundColor Yellow
Write-Host "   - Labels: feature, module: notifications/chatbot, priority: high, sprint-5" -ForegroundColor White
Write-Host "   - Milestone: Sprint 5: Notificaciones & Chat" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
