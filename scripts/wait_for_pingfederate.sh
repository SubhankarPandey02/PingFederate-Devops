#!/usr/bin/env bash
set -euo pipefail

PF_ADMIN_URL="${PF_ADMIN_URL:-https://localhost:9999/pingfederate/}"

echo "Checking PingFederate at: $PF_ADMIN_URL"

for i in $(seq 1 30); do
  if curl -k -s -o /dev/null "$PF_ADMIN_URL"; then
    echo "PingFederate is reachable."
    exit 0
  fi

  echo "Attempt $i/30: PingFederate not reachable yet."
  sleep 5
done

echo "PingFederate is not reachable. Pipeline cannot continue."
echo "Start PingFederate manually or run the install/manage pipeline."
exit 1
