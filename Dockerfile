# Use official ROS2 Humble base image
FROM ros:humble

# Set environment
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=humble

RUN apt update && apt install -y \
    python3-colcon-common-extensions \
    build-essential \
    git \
    ros-humble-xacro \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-rviz2 \
    ros-humble-joint-state-publisher \
    ros-humble-joint-state-publisher-gui \
    ros-humble-robot-state-publisher \
    ros-humble-teleop-twist-keyboard \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/walle
