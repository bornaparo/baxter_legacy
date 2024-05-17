#!/usr/bin/env bash

# this script is to re-build the deb file on Noble+, installing all dependencies
ROS_ROOT=/opt/ros/obese

sudo mkdir -p $ROS_ROOT
sudo chown $USER $ROS_ROOT
mkdir -p ../baxter_src/src

# install system dependencies from .txt file
sudo apt install $(tr '\n' ' ' < system-dependencies.txt)

# clone repos from repos.txt
REPOS="$(realpath $(dirname $0)/repos.txt)"
cd ../baxter_src/src
while read repo; do
  git clone $repo
done <$REPOS

cd ..
catkin config --init --install-space $ROS_ROOT --install -DCATKIN_ENABLE_TESTING=False
catkin build
