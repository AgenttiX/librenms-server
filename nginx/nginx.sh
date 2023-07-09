#!/usr/bin/env bash
set -e

if [ "${EUID}" -ne 0 ]; then
  echo "This script should be run as root."
  exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SERVERS_DIR="/etc/nginx/conf.d/servers"

echo "Installing configs."

if [ ! -d "${SERVERS_DIR}" ]; then
  mkdir -p "${SERVERS_DIR}"
fi

if [ ! -L "${SERVERS_DIR}/librenms-servers.conf" ]; then
  ln -s "${SCRIPT_DIR}/librenms.conf" "${SERVERS_DIR}/librenms-servers.conf"
fi

systemctl restart nginx.service
systemctl status nginx.service

echo "Configs installed."
