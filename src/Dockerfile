# Use official ROS2 Humble base
FROM ros:humble

# Set noninteractive mode to prevent user prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt update && apt install -y \
    python3-colcon-common-extensions \
    ros-humble-joint-state-publisher-gui \
    ros-humble-xacro \
    ros-humble-rviz2 \
    ros-humble-robot-state-publisher \
    ros-humble-urdf \
    build-essential \
    git \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /root/walle-dev

# Copy only the ROS2 workspace folder
COPY ./src ./src

# Build the workspace
RUN . /opt/ros/humble/setup.sh && \
    colcon build

# Source environment on container start
CMD ["/bin/bash"]
