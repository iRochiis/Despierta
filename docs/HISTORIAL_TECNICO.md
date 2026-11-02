# Despierta 0.25 — vigilancia por horario
Base recuperada del APK 0.23 aportado por Kusune. El ZIP anterior contenía Java de la 0.7; no se utilizó como base funcional. El proyecto existente se conserva en Smali recompilable, con todos los recursos del APK; el módulo de programación nuevo está en Java. No es una recuperación exacta del Java original.

## Comportamiento
Fuera de una franja habilitada y aún no disparada: GPS detenido, wakelock liberado, servicio terminado y notificación de vigilancia retirada. AlarmManager conserva una única activación exacta para la siguiente franja. Durante la franja: servicio de ubicación con notificación visible. La activación al final de la franja y los ticks detienen la vigilancia al salir del horario. Un aviso en curso permanece hasta descartarlo. Siempre respeta los días elegidos. Los intervalos nocturnos pertenecen al día de inicio. Tras una llegada se espera a la próxima franja diaria.

Reprograma tras reinicio, actualización y cambios de hora/zona. Forzar cierre desde Android impide la ejecución hasta volver a abrir la app. Requiere ubicación precisa Todo el tiempo y Alarmas y recordatorios para iniciar el servicio automáticamente desde segundo plano. Abre una alarma o pulsa Revisar programación y concede ambos permisos. No se han probado los inicios reales en un Redmi.

## Validación
13 pruebas JVM: inicios/finales, fines de semana, medianoche, Siempre, desactivadas, ya disparadas y solapamientos. APK reconstruido y firma v2/v3 verificada. Certificado idéntico al APK aportado: 855c64266ea16267631ed3ba3c63d09d550f30752a628ecdccfa79291b005170.

## Compilar
JDK 17, Android SDK plataforma y build-tools 35.0.0; exporta JAVA_HOME y ANDROID_HOME, ejecuta bash build.sh. Apktool 2.12.1 y org.json están incluidos. module/AlarmStore.java es auxiliar de compilación/pruebas: no se añade al dex nuevo, porque el código original ya existe en project/smali. El script compila, ejecuta pruebas, reconstruye y firma con la clave de desarrollo original.


## 0.26
Reincorpora mapa de pantalla completa bajo menús flotantes. Fondos RGBA al 58% de opacidad, con RGB de la paleta elegida y fallback independiente de color-mix. Controles compactos y scroll en menús, zoom lateral y atribución visible. Conserva el módulo de horarios de 0.25. Recompilación completa y 13 pruebas de horarios correctas; sintaxis JS y recursos presentes en APK verificados, firma v2/v3. Pendiente inspección visual en teléfono.


## 0.27
Selector de radio propio en panel HTML con colores de la app; presets y Personalizado. Número entero de 100 a 10000 m, misma restricción del puente nativo. Cancelar conserva el radio y aplicar actualiza círculo/valor. Sintaxis JS y nueve casos de radio correctos, trece pruebas de horarios y firma v2/v3 verificadas; pendiente prueba visual en teléfono.


## 0.28
Patrón de vibración por alarma: Clásica, Pulsos cortos, Doble pulso, Pulsos largos y grabación personalizada táctil. Mantener presionado registra pulso y soltar registra pausa; máximo 20 s, mínimo 40 ms por pulso. Prueba sin repetición y parada explícita, guardar/cancelar. Campos vibrationPattern/vibrationName persisten en JSON de alarma. Al avisar, waveform elegido se repite por sí mismo hasta descartar, sin reinicio periódico a los 10 s. Advertencias sin datos usan patrón clásico. Cierre del diálogo cancela la prueba. Edición bloqueada durante alarma activa para no interrumpirla. 14 pruebas de patrones, 13 de horarios y firma v2/v3 correctas; pendiente comprobar tacto y vibración en teléfono.


## 0.29
Grabador oculto hasta seleccionar Personalizado; se oculta al elegir preset. Seleccionar Personalizado comienza captura de 20 segundos. Vibración durante contacto con atributos USAGE_ALARM; cancelación inmediata al soltar. La zona solicita al contenedor no interceptar el gesto durante el contacto. Conserva duración y pausas, prueba/guardar/cancelar. 14 pruebas de patrones y 13 de horarios correctas; firma verificada. Prueba táctil real pendiente en teléfono.


## 0.30
Selector inicial compacto: cuatro patrones seguidos inmediatamente de Personalizado y Cancelar. Elegir preset aplica al borrador y cierra el selector; debe guardarse la alarma después. Solo Personalizado despliega estado, grabador, grabar, probar, detener y guardar personalizado. Altura del panel ajustada al contenido hasta 82% con scroll. 27 pruebas y firma verificadas; pendiente inspección visual en teléfono.


## 0.31
Ajuste global Medio de reproducción: Multimedia (USAGE_MEDIA) o Alarma (USAGE_ALARM). Predeterminado Alarma; preferencia mediaAudio persiste en appearance. MediaPlayer consulta preferencia antes de setAudioAttributes, también al usar tono de respaldo. No fuerza un dispositivo ni garantiza exclusividad de audífonos: ruta final de Android y desconexiones pueden llevar al altavoz. La vibración no cambia. 27 pruebas existentes y firma v2/v3 verificadas; ruta de audio real con auriculares pendiente.

## 0.32
- Ajustes > Medio de reproducción: Solo audífonos fuerza uso multimedia. MediaPlayer comienza silenciado, solicita auriculares y habilita volumen tras confirmar una ruta de auriculares. Desconexión/salida no privada silencia y conserva o inicia vibración. Incluye aviso anticipado. La latencia y el comportamiento de Bluetooth/OEM requieren prueba física; no se garantiza ausencia de frames de audio en todos los dispositivos.
- Ajustes > Listo para viajar: permisos, GPS reciente, volumen, auriculares, pantalla completa, batería y programación. Historial local de hasta 100 eventos (muestra 30), borrable, sin coordenadas ni recorrido.
- Desde ese panel: Iniciar este viaje ahora crea una alarma puntual independiente del horario. Se elimina al descartar la llegada. Terminar este viaje permite cancelarla. La alarma de origen queda marcada como atendida para su franja de hoy; cancelar restaura su marca anterior. Reactivar para otro viaje borra las marcas de llegada/aviso anticipado y habilita la alarma.
- Editor > Aviso anticipado y activación: aviso opcional a una distancia mayor que el radio final (máximo 20 km), vibración breve y sonido opcional. Se emite una vez por franja; el aviso final conserva la alerta repetida existente.
- Al activar dentro del radio: por defecto solicita decidir desde una notificación si avisar ahora o esperar a salir y volver. También admite fijar una de esas políticas por alarma. Reentrada exige salir más allá del radio + máximo(50 m, precisión GPS), para reducir rebotes de ubicación.
- Las ubicaciones con antigüedad superior a 20 segundos o precisión insuficiente se descartan. Aviso de GPS distinto en vibración e historial de la llegada.
- Validación: 13 pruebas de horarios, 14 de patrones y 17 de entrada/salida y aviso anticipado (44). Recompilación APK y firma v2/v3 verificadas. Sin emulador ni prueba física: pendientes pantalla bloqueada, cambios de ruta Bluetooth, disparos en viaje y presentación visual.
- module/TripService.java es otro auxiliar de compilación, excluido del dex; la implementación real sigue en Smali.
