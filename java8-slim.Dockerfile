FROM ubuntu:22.04

LABEL org.opencontainers.image.title="Ubuntu Java 8 Runtime (Slim)"
LABEL org.opencontainers.image.description="Minimal Ubuntu 22.04 image with Java 8, curl, jq, and ca-certificates. Suitable for Forge, Minecraft servers, and Pterodactyl eggs."
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/vanes430/image"
LABEL org.opencontainers.image.url="https://github.com/vanes430/image/pkgs/container/image"
LABEL org.opencontainers.image.vendor="vanes430"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openjdk-8-jre-headless \
        curl \
        jq \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*
