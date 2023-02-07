FROM alpine:latest
# Instalar paquetes

RUN apk add curl libreoffice

# Copiar el script al usuario

COPY --chmod=0755 convert.sh /root


RUN /bin/sh /root/convert.sh