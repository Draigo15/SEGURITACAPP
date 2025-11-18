jest.setTimeout(300000);

beforeAll(async () => {
  const defaultUrl = 'http://127.0.0.1:8081';
  const bundleURL = (process.env.EXPO_BUNDLE_URL || defaultUrl).trim();
  const devClientURL = `seguridadciudadanaapp://expo-development-client/?url=${encodeURIComponent(bundleURL)}`;
  try {
    await device.reverseTcpPort(8081);
  } catch (_) {}
  await device.launchApp({ newInstance: true, launchArgs: { detoxEnableSynchronization: 0 }, url: devClientURL });
  try {
    await new Promise(r => setTimeout(r, 3000));
    await device.openURL({ url: devClientURL });
  } catch (_) {}
  await new Promise(r => setTimeout(r, 15000));
});

afterAll(async () => {
});