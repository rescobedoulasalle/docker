FROM ubuntu/apache2

# Copiar los archivos de la aplicacion al directorio raiz del contenedor
COPY . /var/www/html/

# Exponer el puerto 8089 para Apache
EXPOSE 8098

# Configurar el servidor Apache para escuchar en el puerto 8098
RUN sed -i 's/80/8098/g' /etc/apache2/ports.conf

# Comando para iniciar Apache en primer plano
CMD ["apache2-foreground"]
