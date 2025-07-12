# Use official ROS2 Humble base image
FROM ros:humble

# Set environment
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=humble

RUN apt update && apt install -y \
    python3-colcon-common-extensions \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/walle
