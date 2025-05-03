import requests
import socket
import time

SERVER_URL = 'http://yourname.serveo.net:5555'  # Replace with your Serveo address

def get_device_info():
    return {
        'hostname': socket.gethostname(),
        'ip': socket.gethostbyname(socket.gethostname()),
        'status': 'online'
    }

while True:
    try:
        info = get_device_info()
        r = requests.post(f"{SERVER_URL}/connect", json=info)
        print("Sent info:", r.status_code)
    except Exception as e:
        print("Error:", e)
    time.sleep(10)  # Send info every 10 seconds
