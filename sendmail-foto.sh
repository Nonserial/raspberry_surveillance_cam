#!/bin/bash

#cp $1 /home/pi/Desktop/Motion/Backup/		# uncomment line, if you want to backup all fotos
                                          # Make sure /Desktop/Motion/Backup/ exists

# Check if Network-Connection is established
while true;
do
ping -c 1 www.google.com
if [ $? == 0 ];
then
echo "Network available"
break;
else
echo "No Network conntection.... waiting...."
/home/pi/Desktop/Motion/eventstart.sh			# if this script has been triggered by a snapshot
sleep 60						                      # 'eventstart.sh' has not yet run 
fi
done
echo "Network connection has been established"

# Send Email with Foto attached
# encrypt foto:
#sudo gpg --yes --encrypt --recipient target@mail.com $1
#mpack -s "Foto detected" -d /home/pi/Desktop/Motion/message.txt $1.gpg target@mail.com
# without encryption
mpack -s "Foto detected" -d /home/pi/Desktop/Motion/message.txt $1 target@mail.com

# Wait 1 second
sleep 1 

# Remove sent file
rm $1 # Delete file that has been sent
#rm $1.gpg

# If script has been triggered by snapshot
sleep 900

while true;
do
ping -c 1 www.google.com
if [ $? == 0 ];
then
echo "Network is still available"
/home/pi/Desktop/Motion/eventend.sh 		# run 'eventend.sh' if this script has
break;						# been triggered by snapshot
fi
done
