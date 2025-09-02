# Step 1: Use the official lightweight Python image from Red Hat UBI
FROM registry.access.redhat.com/ubi9/python-39

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the local app.py file into the container
COPY src/app.py /app/app.py

# Step 4: Run the Python app when the container starts
CMD ["python3", "app.py"]
