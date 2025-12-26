#!/bin/bash

icecast2 -c /etc/icecast2/icecast.xml &
liquidsoap /radio.liq
