# Use Python 3.12 slim (compatible with most packages)
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install system dependencies (git, curl, build essentials)
RUN apt-get update && apt-get install -y git curl build-essential && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose FastAPI port (Render free tier expects 10000)
EXPOSE 10000

# Run FastAPI with Uvicorn
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "10000"]
