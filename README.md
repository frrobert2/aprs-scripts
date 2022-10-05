# aprs-scripts
## sendmessage
Send a formatted APRS message packet to APRSIS, and RF via KISS TNC/direwolf.
This Script is a combination of two scripts.

https://github.com/craigerl/aprs-send-weather/blob/main/aprs-send-weather.sh  
https://groups.io/g/direwolf/message/7007                                                                                                                   

both by Craig KM6LYW     

The combination script was assembled and modified by Robert W9RWB   

 Install requirements (direwolf):
 <pre>
    apt-get install direwolf
 </pre>

To install copy aprsmessage to a location in your home directory that is in your path and make the file executable.

Direwolf must be configured and running for the script to work.

Usage:
 <pre>
aprsmessage callsignofrecipient message to recipient
  </pre>
 GPL v2.1
 
 ## isscontact
 
This Script is a modification of two scripts.

https://github.com/craigerl/aprs-send-weather/blob/main/aprs-send-weather.sh  

https://groups.io/g/direwolf/message/7007

Both by Craig KM6LYW

The new script was assembled by Robert W9RWB

The purpose is to send messages to the ISS and other APRS satellites the use ARISS via the commandline rather than using a client such as YAAC or Xastir.

read time in minutes from command line

To install copy aprsmessage to a location in your home directory that is in your path and make the file executable.

Direwolf must be configured and running for the script to work.

GPL v2.1

