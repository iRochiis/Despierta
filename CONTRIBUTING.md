# Colaborar

Gracias por ayudar a que más personas lleguen a tiempo. Autor y responsable del proyecto: Kusune. Desarrollo asistido por ChatGPT (Codex).

1. Abre un Issue para describir el problema concreto y el comportamiento esperado.
2. Trabaja en una rama; conserva preferencias y alarmas existentes y la compatibilidad API 26.
3. Usa APIs Android con comprobación de versión para métodos nuevos. No introduzcas dependencia de paquetes exclusivos de una marca ni servicios de Google para el GPS.
4. Ejecuta `bash build.sh unsigned`. Adjunta resultados de pruebas físicas según `docs/COMPATIBILIDAD.md` si cambias GPS, audio, bloqueo o programación.
5. Explica cambios, validación y límites en el PR. No incluyas claves, APKs generadas, coordenadas de usuarios ni archivos personales.

Los cambios de código original se aportan bajo MIT. Solo aporta imágenes o datos para los que puedas documentar procedencia y permiso. La clase `TripService.java` y `AlarmStore.java` del módulo son auxiliares de compilación y no se incluyen en el segundo DEX; la implementación real sigue en Smali.
