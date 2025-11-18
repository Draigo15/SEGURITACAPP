# 🤖 Configuración de Ollama para Chatbot Inteligente

## ¿Qué es Ollama?

Ollama es una herramienta que permite ejecutar modelos de IA de forma local en tu computadora, sin necesidad de conexión a internet ni costos adicionales. Nuestro chatbot puede usar Ollama para proporcionar respuestas más inteligentes y contextuales.

## 📋 Requisitos del Sistema

### Windows
- Windows 10/11 (64-bit)
- Mínimo 8GB RAM (recomendado 16GB)
- 4GB de espacio libre en disco
- Procesador moderno (Intel i5/AMD Ryzen 5 o superior)

### macOS
- macOS 11.0 o superior
- Mínimo 8GB RAM (recomendado 16GB)
- 4GB de espacio libre en disco
- Chip Apple Silicon (M1/M2) o Intel

### Linux
- Ubuntu 18.04+, CentOS 7+, o distribución compatible
- Mínimo 8GB RAM (recomendado 16GB)
- 4GB de espacio libre en disco

## 🚀 Instalación Paso a Paso

### 1. Descargar e Instalar Ollama

#### Windows
```powershell
# Opción 1: Descargar desde el sitio web
# Ve a https://ollama.ai/download y descarga el instalador para Windows

# Opción 2: Usar winget (si tienes Windows Package Manager)
winget install Ollama.Ollama
```

#### macOS
```bash
# Opción 1: Descargar desde el sitio web
# Ve a https://ollama.ai/download y descarga el instalador para macOS

# Opción 2: Usar Homebrew
brew install ollama
```

#### Linux
```bash
# Instalar usando el script oficial
curl -fsSL https://ollama.ai/install.sh | sh

# O descargar manualmente desde https://ollama.ai/download
```

### 2. Verificar la Instalación

Abre una terminal/PowerShell y ejecuta:

```bash
ollama --version
```

Deberías ver algo como: `ollama version 0.1.x`

### 3. Descargar el Modelo Recomendado

Para nuestro chatbot de seguridad ciudadana, recomendamos usar **Llama 3.1 8B**:

```bash
# Descargar el modelo (esto puede tomar varios minutos)
ollama pull llama3.1:8b

# Verificar que se descargó correctamente
ollama list
```

### 4. Probar el Modelo

```bash
# Iniciar una conversación de prueba
ollama run llama3.1:8b

# Escribe un mensaje de prueba:
# "Hola, ¿puedes ayudarme con temas de seguridad ciudadana?"

# Para salir, escribe: /bye
```

## ⚙️ Configuración para la App

### 1. Iniciar el Servidor Ollama

Ollama debe estar ejecutándose como servicio en segundo plano:

```bash
# En Windows/macOS/Linux
ollama serve
```

**Nota:** En la mayoría de instalaciones, Ollama se inicia automáticamente como servicio del sistema.

### 2. Verificar que el Servidor Funciona

Abre tu navegador y ve a: `http://localhost:11434`

Deberías ver: `Ollama is running`

### 3. Configurar la App

En el archivo `chatbotService.ts`, la configuración por defecto ya está lista:

```typescript
const config = {
  useLocalModel: true,        // Activar modelo local
  ollamaUrl: 'http://localhost:11434',  // URL del servidor
  modelName: 'llama3.1:8b',   // Modelo a usar
  maxTokens: 150,             // Máximo de tokens por respuesta
  temperature: 0.7,           // Creatividad (0.0-1.0)
  fallbackToPreset: true,     // Usar respuestas predefinidas si falla
  rateLimitPerHour: 100       // Límite de consultas por hora
};
```

## 🔧 Modelos Alternativos

Si tu computadora tiene limitaciones de memoria, puedes usar modelos más pequeños:

### Modelos Ligeros (4GB RAM)
```bash
# Modelo muy pequeño y rápido
ollama pull llama3.1:3b

# Modelo especializado en conversación
ollama pull phi3:mini
```

### Modelos Potentes (16GB+ RAM)
```bash
# Modelo más grande y capaz
ollama pull llama3.1:13b

# Modelo especializado en instrucciones
ollama pull codellama:13b
```

## 🚨 Solución de Problemas

### Problema: "Ollama no encontrado"
**Solución:**
1. Reinicia tu terminal/PowerShell
2. Verifica que Ollama esté en tu PATH
3. Reinstala Ollama si es necesario

### Problema: "Modelo no encontrado"
**Solución:**
```bash
# Listar modelos instalados
ollama list

# Descargar el modelo si no está
ollama pull llama3.1:8b
```

### Problema: "Servidor no responde"
**Solución:**
```bash
# Detener Ollama
ollama stop

# Reiniciar el servidor
ollama serve
```

### Problema: "Respuestas muy lentas"
**Solución:**
1. Usa un modelo más pequeño (3b en lugar de 8b)
2. Reduce `maxTokens` en la configuración
3. Cierra otras aplicaciones que consuman RAM

### Problema: "Error de memoria"
**Solución:**
1. Cambia a un modelo más pequeño
2. Reinicia tu computadora
3. Verifica que tienes suficiente RAM libre

## 📊 Monitoreo y Estadísticas

### Ver Uso de Recursos
```bash
# Ver modelos cargados en memoria
ollama ps

# Ver información del sistema
ollama show llama3.1:8b
```

### Logs del Sistema
```bash
# En Linux/macOS
journalctl -u ollama

# En Windows
# Revisar Event Viewer > Applications and Services Logs
```

## 🔒 Consideraciones de Seguridad

1. **Privacidad Total**: Todos los datos se procesan localmente
2. **Sin Conexión Externa**: No se envía información a servidores externos
3. **Control Completo**: Tú controlas qué modelo usar y cómo configurarlo
4. **Datos Sensibles**: Ideal para información de seguridad ciudadana

## 🎯 Optimización de Rendimiento

### Para Computadoras Potentes
```typescript
// En chatbotService.ts
const config = {
  modelName: 'llama3.1:13b',  // Modelo más grande
  maxTokens: 200,             // Respuestas más largas
  temperature: 0.8,           // Más creatividad
};
```

### Para Computadoras Básicas
```typescript
// En chatbotService.ts
const config = {
  modelName: 'llama3.1:3b',   // Modelo más pequeño
  maxTokens: 100,             // Respuestas más cortas
  temperature: 0.5,           // Menos creatividad, más eficiencia
};
```

## 📱 Integración con la App

Una vez configurado Ollama:

1. **Inicia la app** de seguridad ciudadana
2. **Ve al chat** de cualquier reporte
3. **Escribe un mensaje** como ciudadano
4. **Observa** cómo el chatbot responde usando IA local
5. **Verifica** los indicadores visuales (ícono de IA, nivel de urgencia)

## 🆘 Soporte

Si tienes problemas:

1. **Revisa los logs** de Ollama
2. **Consulta la documentación oficial**: https://ollama.ai/docs
3. **Verifica los requisitos** del sistema
4. **Prueba con un modelo más pequeño**

## 🎉 ¡Listo!

Ahora tienes un chatbot inteligente y privado funcionando completamente gratis en tu computadora. El chatbot puede:

- ✅ Responder preguntas sobre seguridad ciudadana
- ✅ Clasificar la urgencia de los mensajes
- ✅ Proporcionar información contextual
- ✅ Funcionar sin conexión a internet
- ✅ Mantener la privacidad de los datos
- ✅ Aprender de las conversaciones localmente

¡Disfruta de tu asistente virtual de seguridad ciudadana!