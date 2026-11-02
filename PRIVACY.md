# Privacidad — Despierta 0.33 beta

Despierta evalúa tu ubicación en el dispositivo para detectar llegada a un radio guardado. Las alarmas y sus coordenadas, horarios y preferencias se guardan en almacenamiento privado de la app. Los sprites importados y la música se leen del archivo que selecciones. No hay cuenta de usuario, servidor propio, anuncios, analítica ni envío automático de diagnósticos en esta versión.

El mapa descarga teselas por HTTPS de OpenStreetMap: el proveedor recibe tu IP y las solicitudes de teselas, que revelan la zona visualizada. Consultar la política del proveedor en https://osmfoundation.org/wiki/Privacy_Policy . El servidor de mapas no recibe la lista completa de alarmas por una llamada específica de Despierta.

La vigilancia usa un servicio visible y se pausa fuera de horarios pendientes. Un aviso ya disparado continúa hasta descartarlo. Las restricciones del sistema pueden interrumpir el servicio.

El historial guarda localmente fecha y tipo de evento, y en ciertos eventos el nombre elegido para la alarma. No almacena una traza de coordenadas. Se conservan hasta 100 eventos y se muestran los 30 más recientes. Puedes borrarlos en el panel de viajes.

El diagnóstico copiable incluye marca/modelo, versión de Android/app/WebView y estado de permisos/audio. No incluye identificador único, coordenadas, historial ni nombres de alarmas. Solo se copia si lo pides; compartirlo es una acción tuya.

Puedes borrar una alarma, el historial o todos los datos desde Ajustes de Android > Aplicaciones > Despierta > Almacenamiento. Desinstalar borra los datos privados. `allowBackup=false` desactiva la copia de seguridad estándar de la app. Para consultas, usa Issues del repositorio; no publiques datos sensibles allí.
