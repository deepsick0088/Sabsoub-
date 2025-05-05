#!/data/data/com.termux/files/usr/bin/bash

while true; do
    echo "[*] Starting controller..."
    python controller.py
    echo "[!] Controller stopped. Restarting in 5s..."
    sleep 5
done
