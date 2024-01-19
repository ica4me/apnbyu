#!/bin/sh

# APN by.U Tercepat 2024

# Nama APN
APN="By.U Tercepat 4G"

# APN
APN_NAME="office.vodafone.nl"

# Proxy
PROXY=""

# Port
PORT=""

# Username
USERNAME="vodafone"

# Password
PASSWORD="vodafone"

# Server
SERVER="63.41.144.124"

# MMSC
MMSC=""

# Proxy MMS
PROXY_MMS="51.254.121.123"

# Port MMS
PORT_MMS="8080"

# MCC
MCC="510"

# MNC
MNC="10"

# Type Authentication
TYPE_AUTHENTICATION="PAP atau CHAP"

# Type APN
TYPE_APN="default,supl"

# Protocol APN
PROTOCOL_APN="IPV4"

# Protocol Roaming APN
PROTOCOL_ROAMING_APN="IPV4 dan IPV6"

# Edit settingan APN

echo -e "$APN\n$APN_NAME\n$PROXY\n$PORT\n$USERNAME\n$PASSWORD\n$SERVER\n$MMSC\n$PROXY_MMS\n$PORT_MMS\n$MCC\n$MNC\n$TYPE_AUTHENTICATION\n$TYPE_APN\n$PROTOCOL_APN\n$PROTOCOL_ROAMING_APN" > /data/data/com.android.providers.telephony/databases/telephony.db/apns.db

# Restart layanan jaringan seluler

service call radio 2
