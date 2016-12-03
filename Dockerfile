FROM armhf/ubuntu
MAINTAINER Aidan Harris

# To Do:
#   * Find out if there's any repurcussions from using the raspbian
#   repo on Ubuntu 14.04. There theoretically shouldn't be because
#   SaltStack is written in Python but I need to be sure...
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get autoremove -y && \
    apt-get install -y curl sudo && \
    curl -s -L https://repo.saltstack.com/apt/debian/8/armhf/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add - && \
    echo 'deb http://repo.saltstack.com/apt/debian/8/armhf/latest jessie main' > /etc/apt/sources.list.d/saltstack.list && \
    apt-get update && \
    apt-get install -y salt-minion && \
    apt-get clean
