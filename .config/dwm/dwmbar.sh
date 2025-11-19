#!/bin/sh
SEP="/"
TIME=$(date +"%H:%M")
DATE=$(date +"%d.%m")
VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
VOL_INFO=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
if echo "$VOL_INFO" | grep -q "\[MUTED\]"; then
    VOLUME_ICON=""
else
    VOLUME_ICON=""
fi
WIFI_INTRFC=$(iw dev | awk '$1=="Interface"{print $2}')
WIFI=""
if [ -n "$WIFI_INTRFC" ]; then
    STATUS=$(iw dev "$WIFI_INTRFC" link)
    if echo "$STATUS" | grep -q "Connected to"; then
        WIFI=""
    fi
fi

xsetroot -name " $VOLUME_ICON $VOLUME $SEP $WIFI $SEP  $BAT% $SEP  $DATE $SEP  $TIME"
