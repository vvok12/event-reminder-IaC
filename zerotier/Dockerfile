# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install ZeroTier
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -s https://install.zerotier.com | bash

# Ensure the ZeroTier service starts automatically
CMD service zerotier-one start && tail -f /dev/null