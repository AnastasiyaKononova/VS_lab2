#!/bin/bash
source config.ini
while [ TRUE ]; do
rm minsk
wget -q https://yandex.by/pogoda/minsk
grep -m 1 -o '<div class="current-weather__thermometer current-weather__thermometer_type_now">.*C</div></span>' minsk | egrep -o '[+-]*[[:digit:]]+'
sleep $timeout
done

