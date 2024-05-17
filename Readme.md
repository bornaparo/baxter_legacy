# Baxter packages for ROS 1

These packages are the legacy version of Baxter's packages from Rethink Robotics.

They have been ported to Python3 and can be used either with Noetic or the Community edition.

## Installing from Debian packages

Debian files are available for an easy install:

- [Ubuntu Focal](https://box.ec-nantes.fr/index.php/s/s7rbFwAeTqwoe6e/download?path=%2F&files=ros-baxter[focal]_1.3.1.deb) with noetic dependencies (installs in `/opt/ros/noetic`, relies on OSRF ROS 1 packages)
- [Ubuntu Jammy](https://box.ec-nantes.fr/index.php/s/s7rbFwAeTqwoe6e/download?path=%2F&files=ros-baxter[jammy]_1.3.1.deb) with Debian dependencies (installs in `/usr`, relies on Debian ROS 1 packages)
- [Ubuntu Noble](https://box.ec-nantes.fr/index.php/s/s7rbFwAeTqwoe6e/download?path=%2F&files=ros-baxter[noble]_1.3.1.deb) with ROS 1 recompiled from source (installs in `/opt/ros/obese`)

The Jammy version will install `baxter_tools` scripts in `/usr/bin` with `baxter_` prefix, to easily run and setup your robot.

## Work in progress

Debian files can be re-generated from the `create_baxter_deb.py` when run from Jammy or Noble. This needs a compiled workspace, that is a bit tricky to get:

- on Jammy: copy the Baxter packages in a workspace `baxter_src/src` and use `catkin_make`
- on Noble+: run `install.sh` from the `obese` folder
