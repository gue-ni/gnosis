#!/bin/bash

ACCESS_LOG=${1}

if [ -z $ACCESS_LOG ]; then
    echo "ERROR: please give access log path"
    exit 1 
fi

KNOWN_BOTS=(
    "AhrefsBot"
    "at-bot"
    "Baiduspider"
    "BingPreview"
    "CERT.at-Statistics-Survey"
    "CensysInspect"
    "curl"
    "Dataprovider.com"
    "Discordbot"
    "DotBot"
    "DuckDuckBot"
    "DuckDuckGo-Favicons-Bot"
    "Expanse indexes the network perimeters of our customers."
    "facebookexternalhit"
    "Googlebot"
    "Go-http-client"
    "Let's Encrypt validation server"
    "Mattermost-Bot"
    "NetSystemsResearch"
    "Nmap Scripting Engine"
    "okhttp"
    "PetalBot"
    "python-requests"
    "SemrushBot"
    "SeznamBot"
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

grep -i -v -E $PATTERN $ACCESS_LOG | grep -E 'HTTP/1.1" (2|3)'



