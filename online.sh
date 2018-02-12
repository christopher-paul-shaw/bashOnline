#!/bin/bash
# Christopher Shaw (https://www.chris-shaw.com)
# Feb 2018

echo "Locating Online Devices";
for ip in $(seq 1 254);
do
        ping -c 1 192.168.0.$ip> /dev/null;
        if [ $? = 0 ]
        then
                echo "192.168.0.$ip - online";
        else
                echo "192.168.0.$ip - offline";
        fi
done                                                                                                              
