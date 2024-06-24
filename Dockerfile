# Utiliza una imagen base de Nginx
FROM nginx:alpine

# Copia los archivos de la carpeta dist al directorio de Nginx
COPY ./dist/test-app/browser /usr/share/nginx/html

# Expon el puerto 80 para el servidor Nginx
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]