# Stage 1: Build
FROM python:3.8-slim AS build

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    libmariadb-dev-compat \
    pkg-config

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

COPY . .

# Stage 2: Production
FROM python:3.8-slim

WORKDIR /app

COPY --from=build /install /usr/local

COPY . .

EXPOSE 5002
CMD ["python", "app.py"]
