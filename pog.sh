#!/bin/bash
while [ TRUE ]; do
rm minsk
wget https://yandex.by/pogoda/minsk
clear 
grep -m 1 -o '<div class="current-weather__thermometer current-weather__thermometer_type_now">.*C</div></span>' minsk | egrep -o '[+-]*[[:digit:]]+'
sleep 3
done

