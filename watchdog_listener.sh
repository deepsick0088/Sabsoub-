#!/data/data/com.termux/files/usr/bin/bash

while true; do
  if ! pgrep -f listener.py > /dev/null; then
    echo "[*] listener.py not running. Starting..."
    nohup python ~/apk_image/listener.py > listener.log 2>&1 &
  fi
  sleep 10
done
