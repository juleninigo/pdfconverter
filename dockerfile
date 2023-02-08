FROM alpine:latest
# Instalar paquetes
 
RUN apk add libreoffice openjdk11-jre
RUN apk add terminus-font ttf-inconsolata ttf-dejavu font-noto font-noto-cjk ttf-font-awesome font-noto-extra
USER root
# Copia los archivos .docx al contenedor
COPY script.sh /root
COPY /ficheros/*.docx /ficheros
# Establece la ruta de trabajo en /docs
WORKDIR /ficheros/
