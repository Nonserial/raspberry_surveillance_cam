#!/bin/bash

# Bring wlan0 up

#sudo ifplugd -R -i wlan0		  # if you want to use Ethernet instead, replace
sudo ifup wlan0				        # „wlan0“ with „eth0“
systemctl restart networking.service
