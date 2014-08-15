#!/bin/sh
set -x

if [ -z "$jvm_args" ]
then
  jvm_args="-Xmx1024M -Xms1024M"
fi

cd {{ minecraft_root }}/volume
ln -fs {{ minecraft_root }}/eula.txt
java $jvm_args -jar {{ minecraft_root }}/minecraft_server.{{ minecraft_version }}.jar
set +x
