# Script para crear Issues del Sprint 1 (Issues #4-#9)
# Requisito: GitHub CLI instalado (winget install --id GitHub.cli)
# Ejecutar: gh auth login primero

Write-Host "🚀 Creando Issues del Sprint 1 para SEGURITACAPP..." -ForegroundColor Cyan
Write-Host ""

# Verificar que gh CLI está instalado y autenticado
try {
    $ghStatus = gh auth status 2>&1
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Error: No estás autenticado en GitHub CLI" -ForegroundColor Red
        Write-Host "Ejecuta: gh auth login" -ForegroundColor Yellow
        exit 1
    }
} catch {
    Write-Host "❌ Error: GitHub CLI no está instalado" -ForegroundColor Red
    Write-Host "Instala con: winget install --id GitHub.cli" -ForegroundColor Yellow
    exit 1
}

# Cambiar al directorio del proyecto
Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #4: Registro de usuarios..." -ForegroundColor Green
gh issue create `
    --title "Implementar registro de usuarios (email/password)" `
    --body-file ".github/issues/issue4.md" `
    --label "feature,module: auth,priority: high,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee dannsotor

Write-Host "✅ Issue #4 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #5: Autenticación con Google..." -ForegroundColor Green
gh issue create `
    --title "Implementar autenticación con Google" `
    --body-file ".github/issues/issue5.md" `
    --label "feature,module: auth,priority: medium,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee Draigo15

Write-Host "✅ Issue #5 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #6: Selector de roles..." -ForegroundColor Green
gh issue create `
    --title "Implementar selector de roles (Ciudadano/Autoridad)" `
    --body-file ".github/issues/issue6.md" `
    --label "feature,module: auth,priority: high,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee dannsotor

Write-Host "✅ Issue #6 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #7: Persistencia de sesión..." -ForegroundColor Green
gh issue create `
    --title "Implementar persistencia de sesión" `
    --body-file ".github/issues/issue7.md" `
    --label "feature,module: auth,priority: critical,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee Draigo15

Write-Host "✅ Issue #7 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #8: Configurar navegación..." -ForegroundColor Green
gh issue create `
    --title "Configurar navegación (React Navigation)" `
    --body-file ".github/issues/issue8.md" `
    --label "feature,module: setup,priority: critical,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee Draigo15

Write-Host "✅ Issue #8 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #9: Documentación de setup..." -ForegroundColor Green
gh issue create `
    --title "Crear documentación de setup" `
    --body-file ".github/issues/issue9.md" `
    --label "documentation,module: setup,priority: medium,sprint-1" `
    --milestone "Sprint 1: Setup & Autenticación" `
    --assignee dannsotor

Write-Host "✅ Issue #9 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Todas las issues del Sprint 1 han sido creadas exitosamente!" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "   - Issues creadas: #4, #5, #6, #7, #8, #9" -ForegroundColor White
Write-Host "   - Asignadas a @Draigo15: #5, #7, #8 (3 issues)" -ForegroundColor White
Write-Host "   - Asignadas a @dannsotor: #4, #6, #9 (3 issues)" -ForegroundColor White
Write-Host ""
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
