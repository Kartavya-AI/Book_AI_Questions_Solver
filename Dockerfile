# Use Python 3.11 slim
FROM python:3.11-slim

WORKDIR /app

# System dependencies
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

EXPOSE 8080

CMD exec uvicorn api:app --host 0.0.0.0 --port ${PORT:-8080}
