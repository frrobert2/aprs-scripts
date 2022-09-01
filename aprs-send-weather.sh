#!/bin/bash -x                                                                                    
#                                                                                                 
# aprs-send-weather.sh                                                                                 
#                                                                                                      
# send an aprs weather packet to aprsis and RF                                                            
#                                                                                                         
# Install requirements (weewx, weewx-aprs weewx extension, direwolf):                                        
#    apt-get install weewx                                                                                     
#    wget https://github.com/cavedon/weewx-aprs/archive/refs/heads/master.zip                                  
#    wee_extension --install=master.zip                                                                             
#    apt-get install direwolf                                                                                       
#                                                                                                                     
#  (C)2022 Craig Lamparter                                                                                             
#  GPL v2                                                                                                               
#

# User serviceable parts:
USER="KM6LYW-3"
PASS="22452"

# packet generated by weewx with weewx-aprs extension installed
STRING=`cat /dev/shm/aprs.pkt`


#### DEBUG SKIP APRSIS
#if false; then

# telnet to aprsis server, login, send concatenated string, quit
echo Sending: $STRING
{
sleep 2
echo "user $USER pass $PASS vers aprs-send-weather 0.99"
sleep 2
printf  "$USER>APRS,TCPIP*:$STRING\n"
sleep 5
echo "^]"
echo "quit"
} | telnet noam.aprs2.net 14580
ERR="${PIPESTATUS[0]}"
if [ $ERR -eq 0 ]; then
   echo "Message sent."
else
   echo "ERROR: telnet returned $ERR."
fi

#fi ### DEBUG END


# Now send the packet to a KISS TNC to transmit over RF
# edit "digipi4" below to your direwolf hostname

echo "Sending packet to Radio TNC."
PACKET="$USER>APRS,WIDE1-1:$STRING"
{
sleep 5    # allow kissutil time to make connection
echo $PACKET
} | kissutil -h digipi4




exit $ERR
