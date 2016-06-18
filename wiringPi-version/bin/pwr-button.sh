#!/bin/bash
# using wiringPi from http://wiringpi.com

# phyiscal pin 1 (GPIO.12) as input with pull-up resitor enabled
/usr/local/bin/gpio mode 1 up

# pin 3 (GPIO.22) as output to control power supply 
/usr/local/bin/gpio mode 3 out

while :
do
  # assume we start with power off
  # wait for button press interrupt on pin 1 (12)
  /usr/local/bin/gpio wfi 1 falling
  # turn the power on
  /usr/local/bin/gpio write 3 1
  sleep 0.5

  # wait for button press interrupt on pin 1 (12)
  /usr/local/bin/gpio wfi 1 falling
  # turn the power off
  /usr/local/bin/gpio write 3 0
  sleep 0.5
done




