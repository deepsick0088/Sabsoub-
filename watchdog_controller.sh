#!/data/data/com.termux/files/usr/bin/bash

while true; do
    echo "[*] Starting controller.py..."
    nohup python controller.py > controller.log 2>&1
    echo "[!] controller.py crashed. Restarting in 5 seconds..."
    sleep 5
done
