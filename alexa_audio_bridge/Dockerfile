ARG BUILD_FROM
FROM $BUILD_FROM

# Installiamo solo i tool minimi per far girare gli script di Home Assistant
RUN apt-get update \
    && apt-get install -y jq curl \
    && apt-get clean

# Copiamo lo script di avvio che abbiamo preparato
COPY run.sh /
RUN chmod a+x /run.sh

# Facciamo partire il nostro script invece del default dell'immagine
ENTRYPOINT [ "/run.sh" ]
