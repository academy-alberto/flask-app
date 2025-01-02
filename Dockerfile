# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY ./app /app

# Install Python dependencies
RUN pip install --no-cache-dir flask gunicorn

# Expose the port that the app runs on
EXPOSE 8000

# Command to run the app with Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "main:app"]