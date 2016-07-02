#!/bin/bash

#cp $1 /home/pi/Desktop/Motion/Backup/		# uncomment line, if you want to save all data

# Check if Network-Connection is established
while true;
do
ping -c 1 www.google.com
if [ $? == 0 ];
then
echo "Network available"
break;
else
echo "No Network conntection.... waiting 10 seconds...."
sleep 10
fi
done
echo "Network connection has been established"


# Send Email with Video attached
# encrypt video:
#sudo gpg --yes --encrypt --recipient target@mail.com $1
#mpack -s "Video detected" -d /home/pi/Desktop/Motion/message.txt $1.gpg target@mail.com
# without encryption:
mpack -s "Video detected" -d /home/pi/Desktop/Motion/message.txt $1 target@mail.com


# Wait 1 second
sleep 1 

# Remove sent file
rm $1 # Delete file that has been sent
#rm $1.gpg
