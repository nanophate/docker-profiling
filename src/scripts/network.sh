cat /proc/net/dev > network_data

recive_bytes=$(awk '{print $1,$2}' network_data | grep eth0 | awk '{print $2}')    # Receive
transmit_bytes=$(awk '{print $1,$10}' network_data | grep eth0 | awk '{print $2}') # Transmit

echo "recive $(echo "$recive_bytes"     | awk '{byte =$1 /1024/1024 ; print byte " MB"}')"
echo "transmit $(echo "$transmit_bytes" | awk '{byte =$1 /1024/1024 ; print byte " MB"}')"
