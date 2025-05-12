 # Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy only requirements first to leverage Docker cache better
COPY requirements.txt .

# Install dependencies — FORCE correct versions
RUN pip install --no-cache-dir Flask==2.0.3 Werkzeug==2.0.3

# Copy the rest of the app files
COPY . .

# Expose the port
EXPOSE 8080

# Run the app
CMD ["python", "main.py"]
