cd #!/bin/bash

# Wlan0 down
sudo /home/pi/Desktop/Motion/prepare.sh

# wait 5 minutes until motion starts, so you can run away and hide to not trigger alarm
sleep 300

# Restart service motion
sudo /etc/init.d/motion restart
