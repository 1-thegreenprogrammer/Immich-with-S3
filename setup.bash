#!/bin/bash

# Rename rclone to rclone.conf
mv rclone rclone.conf 2>/dev/null || true

# Create directories for rclone plugin
mkdir -p /var/lib/docker-plugins/rclone/config
mkdir -p /var/lib/docker-plugins/rclone/cache

# Copy rclone.conf
cp rclone.conf /var/lib/docker-plugins/rclone/config/rclone.conf

# Start Immich
docker compose up -d