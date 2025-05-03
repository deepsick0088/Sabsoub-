import socket

# Set the server IP and port (use the public IP and port 5678 as agreed)
SERVER_IP = '154.121.96.46'  # Update this with your public IP
SERVER_PORT = 5678

def connect_to_server():
    # Create a socket to connect to the server
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    try:
        print(f"[*] Connecting to {SERVER_IP}:{SERVER_PORT}...")
        client_socket.connect((SERVER_IP, SERVER_PORT))
        print("[+] Connected!")
        
        # Send a message once connected
        message = "Connection established from the second phone"
        client_socket.send(message.encode())

        # Receive any response from the server
        response = client_socket.recv(1024).decode()
        print(f"[*] Received: {response}")

    except Exception as e:
        print(f"[!] Failed to connect: {e}")
    finally:
        client_socket.close()

if __name__ == "__main__":
    connect_to_server()
