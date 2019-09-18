#!/bin/sh
while [ 1 ]
do
if ping -w 1 -q -s 1 8.8.8.8
then
echo "0" > /sys/class/leds/re450\:red:wps/brightness && echo "255" > /sys/class/leds/re450\:blue:wps/brightness
elif ping -w 1 -q -s 1 192.168.0.1
then
echo "255" > /sys/class/leds/re450\:red:wps/brightness && echo "255" > /sys/class/leds/re450\:blue:wps/brightness
else
echo "0" > /sys/class/leds/re450\:blue:wps/brightness && echo "255" > /sys/class/leds/re450\:red:wps/brightness
fi
sleep 10
done
exit 0
