# Compatibilidad y pruebas

## Alcance declarado

Android 8.0 / API 26 en adelante, GPS y WebView. No hay bibliotecas `.so`, filtros de fabricante ni dependencia de Play Services. Bluetooth es opcional. No se promete soporte iOS, Android anterior a 8, Android TV ni equipos sin GPS.

El soporte declarado por manifiesto no certifica la vigilancia. Android y cada fabricante controlan batería, permisos, inicio en segundo plano y presentación de alarmas. Las pantallas de ajustes se abren con acciones Android estándar y tienen salida al detalle de la app cuando una acción no existe.

## Evidencia disponible

| Plataforma | Instalación/compilación | Viaje, bloqueo y audio |
| --- | --- | --- |
| Redmi Note 13 Pro 5G, versión anterior | Usuario informó funcionamiento | Tres avisos satisfactorios reportados; no extrapolar a 0.33 |
| Despierta 0.33 | APK reconstruida, firma verificada, 44 pruebas de lógica | Pendiente prueba física |
| Android 8–10 / API 26–29 | Declarado por manifiesto y guardas | Pendiente |
| Android 11–13 / API 30–33 | Declarado por manifiesto y guardas | Pendiente |
| Android 14–16 / API 34–36 | Target 35; se usa comportamiento Android vigente | Pendiente |
| Pixel, Samsung, Motorola | Objetivos de validación | Pendiente |
| Xiaomi/Redmi/POCO, OPPO/Realme/OnePlus, Vivo, Huawei | Objetivos de validación | Pendiente |

## Protocolo por equipo

Registra marca/modelo, Android, versión de app y WebView, fecha, permisos y batería. Reporta cada fila como OK/FALLÓ/NO APLICA, nunca como probado si solo compiló.

1. Instalación limpia y actualización firmada encima de la anterior: alarmas, paleta y mascota conservadas.
2. Abrir mapa, mover y quitar pin, elegir coordenadas y radio; validar días y horario guardados.
3. Alarma fuera de franja: sin servicio de vigilancia/GPS de Despierta; inicio automático de franja con pantalla bloqueada; parada al finalizar. Probar medianoche y días elegidos.
4. Desde fuera, cruzar el radio con pantalla apagada. Confirmar vibración repetida, notificación/pantalla de llegada, mascota y descarte. No espiar ni interferir con el bloqueo de seguridad del dispositivo.
5. Activar ya dentro: Preguntar, Esperar a salir y Avisar ahora. La opción Esperar requiere salir más allá del margen de precisión antes de rearmar.
6. Aviso anticipado una vez antes del radio final; llegada final repetida; reactivar manualmente y volver a cruzar.
7. Viaje puntual fuera de horario: inicio, llegada, descarte y eliminación. Cancelar restaura la marca previa del destino de origen.
8. Multimedia y Alarma con auriculares con cable/Bluetooth. En Solo audífonos probar sin conexión, desconectar durante el aviso y cambiar ruta al altavoz. Registrar cualquier sonido por altavoz; una callback de ruta no permite garantizar latencia cero en todos los equipos.
9. GPS desactivado, señal antigua, baja precisión y túnel: distinguir advertencia de señal de llegada; recuperar al volver la señal.
10. Notificaciones denegadas, volumen cero, modo No molestar, vibración ausente y permisos revocados: estado de preparación comprensible; no confundir con llegada comprobada.
11. Reiniciar teléfono, cambiar hora/zona, actualizar app; revisar reprogramación. Forzar detención desde Android requiere volver a abrir la app.
12. Pantalla pequeña, letra grande, modo horizontal, teclado y lector de pantalla: sin acciones ocultas ni texto cortado.

## Referencias Android

- https://developer.android.com/guide/practices/compatibility
- https://developer.android.com/guide/topics/manifest/uses-sdk-element
- https://developer.android.com/develop/background-work/services/fgs/restrictions-bg-start
- https://developer.android.com/about/versions/14/changes/fgs-types-required
- https://developer.android.com/reference/android/media/AudioRouting

## Límites conocidos

El radio es distancia geográfica en línea recta, no distancia siguiendo la ruta del camión. Un GPS sin señal no puede confirmar llegada. La batería, un cierre forzado, permisos revocados y las decisiones de Android sobre pantalla completa pueden impedir el aviso esperado. “Solo audífonos” depende de la información de ruta proporcionada por el sistema y necesita validación física.
