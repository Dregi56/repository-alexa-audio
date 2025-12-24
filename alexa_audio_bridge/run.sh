#!/usr/bin/with-contenv bashio

echo "Avvio di Alexa Audio Bridge (Logitech Media Server)..."

# Assicuriamoci che la cartella config esista per le preferenze di LMS
mkdir -p /config/prefs
mkdir -p /config/logs
mkdir -p /config/cache

# Lancio del server LMS. 
# Usiamo 'exec' così LMS diventa il processo principale del container.
exec /usr/sbin/squeezeboxserver \
    --user squeezeboxserver \
    --prefsdir /config/prefs \
    --logdir /config/logs \
    --cachedir /config/cache \
    --no-cleanup
