# Manual de Instalación – SeguridadCiudadanaApp

Este documento describe cómo preparar el entorno, configurar variables y ejecutar la app en Android (Windows). Incluye pasos para desarrollo, build de APK y pruebas.

## Requisitos Previos
- Windows 10/11 (64‑bit)
- Node.js 18 o 20 (LTS) y `npm`
- Java JDK 17 (recomendado para Gradle/AGP 8.x)
- Android Studio con SDK Platform API 35, Build‑Tools 35.x y `platform-tools`
- Emulador Android (AVD) creado: Pixel 4 (coincide con la configuración de pruebas E2E)

## Preparación del Entorno Android
- Instala Android Studio y crea un AVD: Pixel 4 (Android 14/15).
- Variables de entorno:
  - `ANDROID_HOME` → ruta del SDK (p.ej. `C:\Users\<usuario>\AppData\Local\Android\Sdk`)
  - Añade a `PATH`: `%ANDROID_HOME%\platform-tools` y `%ANDROID_HOME%\emulator`
- Instala JDK 17 y define `JAVA_HOME` apuntando a esa instalación.

## Variables de Entorno de la App
La app carga variables desde `app.config.js` usando `.env`.

1) Crea `SeguriTac/.env` con estas claves (ejemplo):
```
FIREBASE_API_KEY=xxxxx
FIREBASE_AUTH_DOMAIN=tu-proyecto.firebaseapp.com
FIREBASE_PROJECT_ID=tu-proyecto
FIREBASE_STORAGE_BUCKET=tu-proyecto.appspot.com
FIREBASE_MESSAGING_SENDER_ID=000000000000
FIREBASE_APP_ID=1:000000000000:android:aaaaaaaaaaaaaaaa
GOOGLE_MAPS_API_KEY=AIzaSy...
```

2) Copia `google-services.json` de Firebase en `SeguriTac/google-services.json` (ruta referenciada en `app.config.js`).

3) Perfiles opcionales:
- `.env.preview` y `.env.production` si usas distintos entornos (ver `ENVIRONMENT.md`).

## Instalación de Dependencias
Ejecuta en la carpeta del proyecto (`SeguriTac`):
```
npm install
```

## Ejecución en Desarrollo (Android)
Opción A (recomendada con Expo Dev Client):
- Inicia el servidor de desarrollo:
```
npm run start
```
- En otra terminal, construye y lanza la app al emulador:
```
npm run android
```

Opción B (Gradle directo para debug APK):
```
cd android
gradlew.bat assembleDebug
```
El APK quedará en `android/app/build/outputs/apk/debug/app-debug.apk`.

## Build de Release (APK)
- Configura firmas si corresponde (`android/app/build.gradle` y `gradle.properties`).
- Construye release:
```
cd android
gradlew.bat assembleRelease
```
APK: `android/app/build/outputs/apk/release/app-release.apk`.

## EAS Build (opcional)
Si prefieres compilación en la nube:
```
npx eas-cli login
eas build:configure
eas build -p android --profile preview
```
Configura variables en EAS Secrets para las claves de Firebase/Maps.

## Pruebas
- Unitarias/Integración:
```
npm test
```
- Conjuntos definidos:
```
npm run test:smoke:auth
npm run test:all
```

## Pruebas E2E con Detox (Android)
Requisitos:
- AVD `Pixel_4` creado y funcional.
- Dependencias instaladas (`npm install`).

Comandos:
```
npm run e2e:build   # compila app y tests para Android
npm run e2e:test    # lanza el emulador y ejecuta los tests
```
Notas:
- El flujo de login usa `testID`s (`login-email`, `login-password`, `login-submit`).
- Durante `e2e:build` se establece `DETOX_E2E=true` para simplificar el login en entornos de prueba.

## Solución de Problemas
- `detox` no se reconoce: ejecuta `npm install` en `SeguriTac`.
- Error JDK/Gradle: usa JDK 17 y limpia caches (`gradlew clean`).
- SDK/ADB no encontrado: verifica `ANDROID_HOME` y `PATH` con `platform-tools` y `emulator`.
- Emulador no arranca: abre Android Studio y prueba iniciar el AVD manualmente.
- iOS en Windows: no disponible; requiere macOS.

## Estructura y Scripts Clave
- Scripts (`package.json`):
  - `start` → `expo start`
  - `android` → `expo run:android`
  - `e2e:build` → `detox build --configuration android.emu.debug`
  - `e2e:test` → `detox test --configuration android.emu.debug --record-logs all --report-logs all --reuse`
- Binarios de build: `android/app/build/outputs/apk/...`
- Config Detox: `.detoxrc.json`
- Config Expo: `app.config.js`

## Recomendaciones
- Mantén el AVD actualizado y usa API 35.
- No subas archivos sensibles (`google-services.json`, claves) fuera de los secretos apropiados.
- Integra los comandos en CI para validar antes de publicar.

