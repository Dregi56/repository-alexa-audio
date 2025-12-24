# Alexa Audio Bridge (LMS) for Home Assistant

Questo add-on permette di trasformare i tuoi dispositivi **Amazon Alexa** in player audio locali utilizzando **Logitech Media Server (LMS)**. È la soluzione ideale per riprodurre file MP3/WAV salvati localmente su Home Assistant senza passare obbligatoriamente dal cloud di Amazon.

## 🚀 Caratteristiche
- **Streaming Locale:** Invia audio direttamente ai dispositivi Echo.
- **Integrazione HA:** I dispositivi compaiono come `media_player` in Home Assistant.
- **Multi-room:** Sincronizzazione audio tra più dispositivi Alexa.

## 🛠 Installazione

1. Copia l'URL di questo repository GitHub.
2. Vai su **Home Assistant** -> **Impostazioni** -> **Add-on** -> **Store degli add-on**.
3. Clicca sui tre puntini in alto a destra e seleziona **Repository**.
4. Incolla l'URL e clicca su **Aggiungi**.
5. Cerca "Alexa Audio Bridge" nella lista, cliccaci sopra e premi **Installa**.

## ⚙️ Configurazione Iniziale

Una volta avviato l'add-on, segui questi passaggi cruciali:

1. **Apri l'interfaccia web:** Vai su `http://IP_DEL_TUO_HA:9000`.
2. **Installa il Bridge:**
   - Vai in **Settings** (in basso a destra) -> scheda **Plugins**.
   - Cerca il plugin **"UPnP/DLNA Bridge"** (di Philippe).
   - Spunta la casella per attivarlo e clicca su **Apply** (dovrai riavviare l'add-on).
3. **Configura il Bridge:**
   - Torna in **Settings** -> scheda **Advanced**.
   - Seleziona dal menu a tendina **"UPnP/DLNA Bridge"**.
   - Clicca su **"Start Guide"** o cerca i tuoi dispositivi Echo nella rete.
   - Una volta trovati, verranno creati dei player virtuali.

## 📁 Dove mettere i file audio
L'add-on è configurato per leggere la cartella `/media` di Home Assistant. Carica i tuoi file lì e li vedrai apparire nella libreria di LMS.

## ⚠️ Note Tecniche
- L'add-on deve girare in modalità **Host Network** per poter scoprire i dispositivi Alexa nella rete locale.
- Assicurati che il firewall del tuo router non blocchi i pacchetti UDP (porta 1900) necessari per il protocollo DLNA.
