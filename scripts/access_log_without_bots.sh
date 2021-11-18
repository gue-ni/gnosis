#!/bin/bash

ACCESS_LOG=${1}

if [ -z $ACCESS_LOG ]; then
    echo "ERROR: please give access log path"
    exit 1 
fi

KNOWN_BOTS=(
    "AhrefsBot"
    "Baiduspider"
    "CERT.at-Statistics-Survey"
    "CensysInspect"
    "Discordbot"
    "DuckDuckBot"
    "Googlebot"
    "Mattermost-Bot"
    "NetSystemsResearch"
    "PetalBot"
    "SemrushBot"
    "Slurp"
    "WhatsApp"
    "YandexBot"
    "YandexImages"
    "bingbot"
    "facebot"
    "ia_archiver"
    "zgrab"
)

PATTERN="($(echo ${KNOWN_BOTS[@]} | sed 's/ /|/g'))"

grep -i -v -E $PATTERN $ACCESS_LOG



