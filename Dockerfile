# Use Python image from Docker Hub
FROM image-registry.openshift-image-registry.svc:5000/dis-poc-514020/python:3.9-slim

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
