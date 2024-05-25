FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy application files
COPY . .

# Expose the port
EXPOSE $PORT

# Run the application
CMD ["gunicorn", "--workers=4", "--bind=0.0.0.0:$PORT", "kmeans:app"]
