#!/bin/bash
# Navigate to the project directory and start the Flask server
python controller.py &

# Start the Cloudflare Tunnel
cloudflared tunnel --url http://localhost:5050
