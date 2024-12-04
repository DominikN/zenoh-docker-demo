# zenoh-docker-demo

A minimal demonstration of using ROS 2 & Zenoh in Docker with a simple talker/listener setup. You can use Zenoh in multiple ways:

1. [`rmw_zenoh_cpp`](https://github.com/ros2/rmw_zenoh)- As a ROS 2 RMW (instead of DDS)
2. [`zenoh-bridge-ros2dds`](https://github.com/eclipse-zenoh/zenoh-plugin-ros2dds) - As a bridge between different DDS networks (eg. to connect remote robots)

## How to use `rmw_zenoh_cpp`

```bash
cd rmw/
docker compose up
```

> Default `rmw_zenoh_cpp` config file
>
> `/ws_rmw_zenoh/install/rmw_zenoh_cpp/share/rmw_zenoh_cpp/config`

## How to use `zenoh-bridge-ros2dds`