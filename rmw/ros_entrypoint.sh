#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/ws_rmw_zenoh/install/setup.bash"

exec "$@"
