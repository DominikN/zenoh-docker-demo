FROM ros:jazzy-ros-base AS zenoh-builder

SHELL ["/bin/bash", "-c"]

WORKDIR /ws_rmw_zenoh

RUN apt update && apt install -y \
        cargo && \
    git clone https://github.com/ros2/rmw_zenoh src/rmw_zenoh && \
    rosdep install --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y && \
    source /opt/ros/$ROS_DISTRO/setup.bash && \
    colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release && \
    rm -rf build/ log/ src/

FROM ros:jazzy-ros-core

SHELL ["/bin/bash", "-c"]

COPY --from=zenoh-builder /ws_rmw_zenoh /ws_rmw_zenoh
COPY ros_entrypoint.sh /

RUN apt update && apt install -y \
        ros-$ROS_DISTRO-demo-nodes-cpp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "source \"/opt/ros/$ROS_DISTRO/setup.bash\"" >> /etc/bash.bashrc && \
    echo "source \"ws_rmw_zenoh/install/setup.bash\"" >> /etc/bash.bashrc

