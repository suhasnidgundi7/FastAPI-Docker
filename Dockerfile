# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 1001 for the container
EXPOSE 1001     

# Define an environment variable
ENV NAME FastAPI-Docker

# Run the command to start the server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "1001"]
