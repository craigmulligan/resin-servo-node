#!/bin/bash
cd app/pi-blaster && ./pi-blaster 22 && echo "0=0.1" > /dev/pi-blaster
cd .. && node servo.js
