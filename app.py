print("Hello from inside a Podman container!")

with open("/mnt/shared/data.txt", "r") as f:
    content = f.read()
    print("File content from host:", content)

