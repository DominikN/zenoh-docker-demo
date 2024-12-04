FROM ubuntu:24.04

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
        ca-certificates && \
    echo "deb [trusted=yes] https://download.eclipse.org/zenoh/debian-repo/ /" > /etc/apt/sources.list.d/zenoh.list && \
    apt update && apt install -y \
        zenoh-bridge-ros2dds && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*