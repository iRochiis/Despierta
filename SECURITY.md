# Seguridad

No publiques claves de firma, contraseñas, ubicaciones, archivos personales ni un exploit con datos privados en un Issue público. Si el repositorio tiene activado Private vulnerability reporting, úsalo para reportar vulnerabilidades. Si no, abre un Issue solicitando un canal privado sin incluir detalles sensibles.

Las versiones beta no tienen auditoría de seguridad independiente. Las actividades internas y el servicio no están exportados; el lanzador es público. El paquete fuente excluye claves y resultados de compilación.

Las firmas permiten actualizar una instalación conservando sus datos. Guarda tu clave pública de producción fuera del repositorio y respáldala. Si se filtró una clave, retirar el archivo de la rama actual no la revoca ni la elimina del historial: considera esa firma comprometida y prepara una migración de distribución.
