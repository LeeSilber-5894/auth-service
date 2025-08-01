# Use Python image
FROM python:3.14.0rc1-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

# Expose and run
EXPOSE 5000
CMD ["python", "authApp.py"]