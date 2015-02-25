FROM rayman/ros-indigo-ros-base
MAINTAINER Julian Cerruti <jcerruti@creativa77.com.ar>

# Install system dependencies
RUN apt-get update && apt-get install -y tmux wget vim
RUN apt-get install -y ros-indigo-turtlebot-navigation
RUN apt-get install -y ros-indigo-roslint
RUN apt-get install -y ros-indigo-yocs-msgs
RUN apt-get install -y ros-indigo-rocon
RUN apt-get install -y python-rosinstall
RUN apt-get install -y gnome-terminal

# TODO: modify /etc/avahi/avahi-daemon.conf to set enable-dbus=no

# Create userid for building and running ROS applications
RUN useradd -m ros
