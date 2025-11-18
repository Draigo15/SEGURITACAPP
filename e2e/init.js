// Ensure Android SDK is discoverable for Detox on Windows
if (!process.env.ANDROID_SDK_ROOT) {
  const localAppData = process.env.LOCALAPPDATA || process.env.APPDATA || '';
  if (localAppData) {
    process.env.ANDROID_SDK_ROOT = `${localAppData}\\Android\\Sdk`;
  }
}

jest.setTimeout(180000);

beforeAll(async () => {
  const bundleURL = process.env.EXPO_BUNDLE_URL;
  // Desactivar sincronización nativa de Detox para evitar bloqueos de awaitIdle durante bootstrap.
  if (bundleURL) {
    console.log(`[Detox:init] Launching Dev Client with bundle URL: ${bundleURL}`);
    const devClientURL = `exp+seguridadciudadanaapp://expo-development-client/?url=${encodeURIComponent(bundleURL)}`;
    await device.launchApp({
      newInstance: true,
      launchArgs: { detoxEnableSynchronization: 0 }
    });
    await device.openURL({ url: devClientURL });
  } else {
    console.log('[Detox:init] Launching app with embedded bundle (no Dev Client)');
    await device.launchApp({
      newInstance: true,
      launchArgs: { detoxEnableSynchronization: 0 }
    });
  }
});

afterAll(async () => {
  // No cleanup manual: el entorno Detox se encarga del cierre.
});