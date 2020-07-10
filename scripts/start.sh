#!/bin/sh

SPIGOT=../minecraft/spigot.jar

if [ ! -f "$SPIGOT" ]; then
 echo 'No prior installation detected, generating'
 cp ../scripts/eula.txt ../minecraft
 cp ../scripts/spigot.jar ../minecraft
else
 echo "Previous installation detected"
fi

echo "Running spigot"

java -Xms1G -Xmx1G -XX:+UseConcMarkSweepGC -jar spigot.jar nogui