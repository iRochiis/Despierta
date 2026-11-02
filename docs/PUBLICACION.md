# Preparar GitHub y una versión pública

Este paquete no ha creado ni publicado un repositorio remoto. No hay una cuenta de GitHub ni URL del repositorio configurada en el proyecto.

## Código

1. Crea un repositorio llamado `Despierta` en tu cuenta. Usa la descripción: “Alarma Android por ubicación para llegar a tiempo en transporte público”.
2. Sube el contenido de esta carpeta (incluidos `.github` y `.gitignore`). Nunca subas el ZIP antiguo ni la clave de desarrollo. Con Git puedes usar `git init -b main`, añadir archivos, hacer el primer commit con tu identidad y conectar la URL real que GitHub te proporcione.
3. Activa Issues y revisa README, MIT y avisos de terceros. Antes de hacer público arte de Miku/Dewey/Seedy, documenta su autorización o sustitúyelo; la licencia del código no lo cubre. Documenta también el origen del catálogo comunitario de estaciones.
4. El workflow compila y ejecuta pruebas en push/PR. Conserva un artefacto sin firmar. Un build verde no certifica comportamiento físico.

## Firma

La clave antigua de desarrollo no se incluye en este paquete. La APK 0.33 de continuidad mantiene esa firma para poder actualizar la instalación existente. No la presentes como una firma nueva de producción.

Para una primera distribución pública sostenida, genera y respalda una clave privada de lanzamiento. Ejemplo local (keytool pedirá contraseñas):

```bash
mkdir -p .private
keytool -genkeypair -keystore .private/release.jks -alias despierta -keyalg RSA -keysize 3072 -validity 10000
```

Exporta `SIGNING_KEYSTORE` con ruta absoluta, `SIGNING_ALIAS`, `SIGNING_STORE_PASSWORD` y opcionalmente `SIGNING_KEY_PASSWORD` en una terminal privada. Ejecuta `bash build.sh release`. No pegues contraseñas en el repositorio, capturas ni comandos de Issues. El script las lee mediante entorno; la clave queda fuera de Git.

Cambiar el certificado impide actualizar directamente instalaciones firmadas con la clave antigua; no pidas desinstalar sin advertir que se borrarán sus alarmas. Define la política de firma antes de la primera versión pública. No se configuró firma automática en GitHub ni se cargaron secretos a ninguna cuenta.

## Release beta

- Ejecuta pruebas, conserva el certificado elegido y revisa el protocolo de compatibilidad en al menos otro fabricante.
- Etiqueta la versión correspondiente (actual `v0.33`) y marca Pre-release.
- Adjunta solo APK firmada + SHA256SUMS, nunca el keystore, SDK ni carpetas de compilación.
- Usa `docs/RELEASE_NOTES_0.33.md` como descripción.
- Verifica descarga e instalación desde otro teléfono y registra evidencia por equipo.
- Sustituye las referencias genéricas al repositorio en la app por tu URL real cuando exista.

Google Play es un paso separado: esta base no genera AAB y los permisos de ubicación en segundo plano, alarmas y pantalla completa requieren revisión según sus políticas.
