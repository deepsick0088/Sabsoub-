import socket

# Set the IP address and port to listen on
IP = '0.0.0.0'  # Listen on all IPs (local)
PORT = 5678      # Port set to 5678 for consistency

# Create the socket and bind it to the IP and port
listener = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
listener.bind((IP, PORT))
listener.listen(1)

print(f"[*] Listening on {IP}:{PORT}...")

# Accept incoming connections
connection, address = listener.accept()
print(f"[+] Connection received from {address}")

# Loop to receive commands from the user and send them to the connected device
while True:
    command = input(">> ")
    connection.send(command.encode())  # Send the command to the client
    result = connection.recv(1024).decode()  # Receive the result from the client
    print(result)  # Print the result from the client
