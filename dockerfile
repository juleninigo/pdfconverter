FROM alpine:latest
# Instalar paquetes
 
RUN apk add libreoffice openjdk11-jre
RUN apk add terminus-font ttf-inconsolata ttf-dejavu font-noto font-noto-cjk ttf-font-awesome font-noto-extra
USER root
# Copia los archivos .docx al contenedor
COPY /ficheros/*.docx /docs/

# Establece la ruta de trabajo en /docs
WORKDIR /docs/

# Convierte los archivos .docx en archivos pdf
RUN for file in *.docx; do libreoffice --headless --convert-to pdf "$file" --outdir /ficheros; done

# Muestra los archivos en la ruta de trabajo
CMD ls