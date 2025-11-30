# Script para crear Issues restantes del Sprint 1 sin labels
Write-Host "🚀 Creando Issues restantes del Sprint 1..." -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\Proyectos\SeguridadApp"

Write-Host "📝 Creando Issue #4: Registro de usuarios..." -ForegroundColor Green
gh issue create `
    --title "Implementar registro de usuarios (email/password)" `
    --body-file ".github/issues/issue4.md" `
    --assignee dannsotor

Write-Host "✅ Issue #4 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #5: Autenticación con Google..." -ForegroundColor Green
gh issue create `
    --title "Implementar autenticación con Google" `
    --body-file ".github/issues/issue5.md" `
    --assignee Draigo15

Write-Host "✅ Issue #5 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #6: Selector de roles..." -ForegroundColor Green
gh issue create `
    --title "Implementar selector de roles (Ciudadano/Autoridad)" `
    --body-file ".github/issues/issue6.md" `
    --assignee dannsotor

Write-Host "✅ Issue #6 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #7: Persistencia de sesión..." -ForegroundColor Green
gh issue create `
    --title "Implementar persistencia de sesión" `
    --body-file ".github/issues/issue7.md" `
    --assignee Draigo15

Write-Host "✅ Issue #7 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #8: Configurar navegación..." -ForegroundColor Green
gh issue create `
    --title "Configurar navegación (React Navigation)" `
    --body-file ".github/issues/issue8.md" `
    --assignee Draigo15

Write-Host "✅ Issue #8 creada" -ForegroundColor Green
Write-Host ""

Write-Host "📝 Creando Issue #9: Documentación de setup..." -ForegroundColor Green
gh issue create `
    --title "Crear documentación de setup" `
    --body-file ".github/issues/issue9.md" `
    --assignee dannsotor

Write-Host "✅ Issue #9 creada" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 ¡Issues creadas! Agrega los labels y milestone manualmente en GitHub" -ForegroundColor Cyan
Write-Host "Ver issues en: https://github.com/Draigo15/SEGURITACAPP/issues" -ForegroundColor Cyan
