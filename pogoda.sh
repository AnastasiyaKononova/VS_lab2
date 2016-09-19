#!/bin/bash
while true 
do
pogoda=$(curl https://yandex.by/pogoda/minsk -silent|
grep '<div class="current-weather__thermometer current-weather__thermometer_type_now">' |
sed -e 's/^[ \t]*//g' |
sed -e 's/<div class="current-weather__thermometer current-weather__thermometer_type_now">//g' |
sed -e 's/<\/div>//g')
echo "$pogoda"
sleep 10
done
