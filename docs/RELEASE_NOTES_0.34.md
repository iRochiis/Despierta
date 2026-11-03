# Despierta 0.34 — corrección de pérdida de GPS

## Fallo corregido
En 0.33, tras 90 segundos sin una ubicación fiable o al desactivar GPS,
TripService usaba la alarma de llegada: vibración en bucle, pantalla de alarma
y bloqueo de actividad. Podía mantenerse hasta que el usuario la descartara.

## Comportamiento nuevo
- La pérdida de señal solo actualiza la notificación silenciosa de vigilancia.
- No activa vibración, audio, pantalla completa ni el bloqueo de la alarma.
- Continúa buscando ubicación; al recuperarla vuelve a evaluar la llegada.
- Una llegada real mantiene la alarma elegida y detiene la búsqueda de ubicación
  mientras espera que el usuario descarte el aviso.

No se ha cambiado la frecuencia del GPS durante un viaje activo. No se afirma
un porcentaje de ahorro ni se atribuye todo el consumo de la captura a una sola causa.

## Validación
Cuatro comprobaciones de regresión sobre la implementación smali real: salida
silenciosa antes de efectos de alarma, ambas rutas GPS con bandera de aviso,
detención de ubicación al llegar y canal de vigilancia sin sonido/vibración.
La compilación de CI incluye estas comprobaciones y los controles anteriores.
Falta prueba física con pérdida/recuperación de GPS y pantalla bloqueada.

## Firma
La clave privada de la APK 0.33 no está en el repositorio ni en el ZIP de código.
La compilación sin firmar no puede instalarse como actualización. No se sustituye
la beta 0.33 por un APK con otro certificado ni se pide desinstalar perdiendo alarmas.
