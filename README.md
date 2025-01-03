# HTTP Echo Server with Tunnel

This repository contains a Docker-based HTTP echo server setup with tunneling capabilities.

## Description

This project uses the `mendhak/http-https-echo` Docker image to create a simple HTTP/HTTPS echo server that displays information about incoming requests. It also includes the capability to create a public tunnel using serveo.net.

## Prerequisites

- Docker and Docker Compose
- SSH client (for tunneling)
- Make

## Configuration

The server can be configured using environment variables:
- `EXTERNAL_HTTP_PORT`: HTTP port (defaults to 8080)
- `EXTERNAL_HTTPS_PORT`: HTTPS port

You can create a `.env` file based on `.env.example` to customize these settings.

## Available Commands

```bash
# Start the server
make up

# Stop the server
make stop

# Create a public tunnel using serveo.net
make tunnelup

# View container logs
make logs

# Check container status
make status
```

## Acknowledgments

Special thanks to:
- [mendhak](https://github.com/mendhak) for the excellent [http-https-echo](https://hub.docker.com/r/mendhak/http-https-echo) Docker image
- [serveo.net](https://serveo.net) for providing the public tunneling service

