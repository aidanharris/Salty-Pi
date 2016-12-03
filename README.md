# Salty Pi

SaltStack docker images for the Raspberry Pi.

This repo currently contains an Ubuntu configuration although I may add other configurations for different distributions.

## Usage:

```
sudo docker run -it --rm aidanharris/saltypi-ubuntu-14.04 /bin/bash
```

## Building Instructions:

```
git clone https://github.com/aidanharris/salty-pi.git
cd salty-pi
sudo docker build -t aidanharris/saltypi-ubuntu-14.04 .
```
