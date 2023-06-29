#!/usr/bin/env bash
apt update
apt install -y curl net-tools dnsutils

curl https://1.1.1.1/
curl https://server
