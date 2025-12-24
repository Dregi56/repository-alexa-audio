#!/usr/bin/with-contenv bashio

bashio::log.info "Avvio di Alexa Audio Bridge (LMS)..."

# Definiamo dove si trovano i file musicali in Home Assistant
MUSIC_DIR="/media"

# Avviamo il processo di Logitech Media Server
# Usiamo i percorsi standard dell'immagine lmscommunity
exec /usr/sbin/squeezeboxserver \
  --cachedir /config/cache \
  --prefsdir /config/prefs \
  --logdir /config/logs \
  --mediadir $MUSIC_DIR \
  --noexit
