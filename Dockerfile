# Use Python image from Docker Hub
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Run the application
CMD ["python", "app.py"]
