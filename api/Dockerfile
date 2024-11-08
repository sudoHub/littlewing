# syntax = docker/dockerfile:1.4

# Base image: FastAPI with Python 3.9
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-slim AS builder

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt ./
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

# Copy application code
COPY ./app ./app

# Development environment stage
FROM builder as dev-envs

# Install git
RUN <<EOF
apt-get update
apt-get install -y --no-install-recommends git
EOF

# Create user 'vscode' and add to docker group
RUN <<EOF
useradd -s /bin/bash -m vscode
groupadd docker
usermod -aG docker vscode
EOF

# Install Docker tools (cli, buildx, compose)
COPY --from=gloursdocker/docker / /
