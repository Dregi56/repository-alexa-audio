# Dockerfile
FROM lmscommunity/logitechmediaserver:latest

# Installiamo le utilità di base di Home Assistant
RUN apt-get update && apt-get install -y jq curl && apt-get clean

# Copiamo lo script di avvio (che creeremo)
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
