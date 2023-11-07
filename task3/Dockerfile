# Use the official Python image as the base image
FROM python:3.8-slim

# Install dependencies
RUN pip install fastapi uvicorn

# Expose the port (make it configurable with an environment variable)
ARG port=8000

ENV PORT=${port}

EXPOSE $PORT

# Install Curl for testing
RUN apt-get update && apt-get install -y curl

# Create a non-root user
RUN useradd -m appuser

# Create the directory for serving static files
RUN mkdir -p /opt/html

# Set permissions for the user on the directory
RUN chown -R appuser /opt/html

# Set the working directory
WORKDIR /opt/html

# Copy the application code into the container
COPY . .

# Switch to the non-root user
USER appuser

# Define the command to start the FastAPI application with Uvicorn
CMD ["sh", "-c", "uvicorn app:app --host 0.0.0.0 --port $PORT"]
