# Validación de la preparación 0.33 — 2 de noviembre de 2026

- Compilación local con JDK 17 / SDK 35 y D8 mínimo 26: correcta.
- 13 pruebas JVM de horarios, 14 de patrones y 17 de radio/entrada/salida/aviso anticipado: 44 correctas.
- Declaraciones GPS/Bluetooth, componentes privados, ausencia de bibliotecas nativas y claves en fuente: revisadas.
- Dependencias descargadas desde cero y verificadas por SHA-256: correcto.
- Scripts Bash y YAML del workflow/plantilla de Issues: sintaxis revisada. El workflow todavía no se ha ejecutado en GitHub.
- APK alineada y firma v2/v3 verificadas; mismo certificado de desarrollo que las versiones previas, para continuidad privada.
- Sin emulador ni teléfono conectado. No se han comprobado GPS real, bloqueo, Bluetooth, distintos fabricantes o presentación visual en 0.33.
- La fuente pública no contiene keystores, APKs, SDK ni JARs descargados. La revisión de derechos del arte y procedencia del catálogo está documentada en avisos de terceros.

Certificado SHA-256 de la APK de continuidad: `855c64266ea16267631ed3ba3c63d09d550f30752a628ecdccfa79291b005170`.

Hash APK: `a17b7b75d677186d6d6900880fa7163068335af0a1d129dd9cda40550732b0f4`.
