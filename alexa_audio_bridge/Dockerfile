ARG BUILD_FROM
FROM $BUILD_FROM

# Installiamo le dipendenze necessarie per LMS
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       perl \
       libio-socket-ssl-perl \
       libnet-ssleay-perl \
       wget \
       faad \
       flac \
       lame \
       sox \
    && apt-get clean

# Scarichiamo e installiamo LMS (Lyrion)
# Nota: qui andrebbe l'URL specifico del pacchetto .deb o .tar.gz
# Per ora usiamo un placeholder, ma questo è il concetto:
RUN wget -O /tmp/lms.deb https://downloads.lmscommunity.org/nightly/logitechmediaserver_8.5.2~1712234567_amd64.deb \
    && dpkg -i /tmp/lms.deb \
    && rm /tmp/lms.deb

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
