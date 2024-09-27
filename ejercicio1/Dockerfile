# Usar la imagen base de Ubuntu
FROM ubuntu:22.04

# Establecer variables de entorno para evitar interacciones durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar el sistema e instalar los paquetes necesarios
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


COPY . /var/www/html
# Exponer el puerto 80 para el servidor web
EXPOSE 80

# Iniciar Apache al ejecutar el contenedor
CMD ["apachectl", "-D", "FOREGROUND"]
