# aprs-send-message
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

