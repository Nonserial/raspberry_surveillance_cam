#!/bin/bash

sleep 300
echo "Waiting 5 minutes before shutting wlan0 down..."

#sudo ifplugd -S -i wlan0		# if you want to use Ethernet instead, replace
sudo ifdown --force wlan0		# „wlan0“ with „eth0“
