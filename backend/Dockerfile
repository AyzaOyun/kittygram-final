FROM python:3.11-slim

WORKDIR /app

# Установите системные зависимости для psycopg2 И Pillow
RUN apt-get update && apt-get install -y \
    gcc \
    postgresql-client \
    libpq-dev \
    zlib1g-dev \
    libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt --no-cache-dir && \
    pip install gunicorn==20.1.0

COPY . .

CMD ["gunicorn", "kittygram_backend.wsgi:application", "--bind", "0.0.0.0:8000"]