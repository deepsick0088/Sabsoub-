#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Killing any running controller.py..."
pkill -f controller.py

echo "[*] Waiting 2 seconds..."
sleep 2

echo "[*] Restarting controller.py..."
python controller.py
