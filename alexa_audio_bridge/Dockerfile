FROM debian:bookworm

RUN apt update && apt install -y \
    icecast2 \
    liquidsoap \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

COPY icecast/icecast.xml /etc/icecast2/icecast.xml
COPY liquidsoap/radio.liq /radio.liq
COPY run.sh /run.sh

CMD ["/run.sh"]
