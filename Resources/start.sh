#!/bin/bash

if [ ! -f /minecraft_server.jar ]
then
    wget -O /minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.9/minecraft_server.1.9.jar
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

java -Xmx1024M -Xms1024M -jar /minecraft_server.jar nogui
