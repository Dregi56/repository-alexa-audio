#!/usr/bin/with-contenv bashio

bashio::log.info "Avvio di Alexa Audio Bridge (LMS)..."

# Avviamo il server usando i percorsi predefiniti dell'immagine base
exec /usr/sbin/squeezeboxserver \
  --cachedir /config/cache \
  --prefsdir /config/prefs \
  --logdir /config/logs \
  --mediadir /media \
  --noexit
