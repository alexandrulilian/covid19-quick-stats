#!/bin/bash

url="https://covid.ourworldindata.org/data/owid-covid-data.csv"
fileName="owid-covid-data.csv"

read -p "Enter the country code for which you want to see the results: " countryCode
read -p "Do you want to see the results just for today? (y/n): " todayStatus

countryCode=${countryCode^^}

wget $url
childPid=$!

while kill -0 $childPid &> /dev/null; do
    sleep 1
done

if [ "$todayStatus" == "y" ]
    then
        awk -v countryCode="$countryCode" -F "," -f parse_today.awk $fileName
elif [ "$todayStatus" == "n" ]
    then
        awk -v countryCode="$countryCode" -F "," -f parse_all.awk $fileName
else
    echo "Incorect input, plese try again."
fi

rm $fileName
