#!/bin/bash
set -e


sudo apt-get update && sudo apt-get upgrade

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get install ros-kinetic-desktop-full -y


# environment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# dependencies for building packages

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y

# initialize rosdep
sudo apt install python-rosdep -y
sudo rosdep init
rosdep update

#source /opt/ros/kinetic/setup.bash
