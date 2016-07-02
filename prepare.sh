#!/bin/bash

#sudo ifplugd -S -i wlan0		# if you want to use Ethernet instead, replace
sudo ifdown --force wlan0		# „wlan0“ with „eth0“
