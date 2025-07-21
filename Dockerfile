# Use the smallest official Python image for the latest version
FROM python:3.12-slim

# Set environment variables for security and performance
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ /app

# Expose the Flask app port
EXPOSE 5000

# Run the Flask application
CMD ["python", "main.py"]