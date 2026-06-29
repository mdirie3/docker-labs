# Flask + Redis Counter App

This project is my solution to a **Containers Challenge**, where I built and containerized a simple Flask web application that uses Redis to persist a page visit counter. The project demonstrates how multiple services communicate within a Docker network using Docker Compose.

## 🚀 Features

- `/` – Returns a welcome message.
- `/count` – Tracks and displays the number of page visits using Redis.

## 🛠️ Tech Stack

- Python
- Flask
- Redis
- Docker
- Docker Compose

## ▶️ Running the Application

Build and start the containers:

```bash
docker compose up --build
```

Stop the containers:

```bash
docker compose down
```

The Flask application communicates with the Redis container over the Docker Compose network.

## 📚 Challenge Objectives

This project focused on learning how to:

- Build and containerize a Flask application with Docker
- Run multiple containers using Docker Compose
- Connect a Flask application to a Redis service
- Persist application data outside the Flask container
- Configure inter-container networking
- Troubleshoot container startup issues using Docker logs

## 💡 What I Learned

While completing this challenge, I gained practical experience with:

- Creating Dockerfiles for Python applications
- Orchestrating multi-container applications with Docker Compose
- Using Redis as an in-memory data store
- Understanding Docker networking and service discovery
- Debugging containerized applications
- Managing and testing containerized services from the command line

## 📂 Project Structure

```text
.
Docker/
├── coderco-challenge/
│   ├── Dockerfile
│   ├── count.py
│   ├── docker-compose.yml
│   └── nginx.conf
└── hello_flask/
    ├── app.py
    ├── Dockerfile
    ├── docker-compose.yml
    ├── requirements.txt
    └── README.md
```

## 📌 Future Improvements

- Add unit tests
- Store application configuration with environment variables
- Add health checks for both containers
- Deploy the application to AWS ECS using Amazon ECR and GitHub Actions
