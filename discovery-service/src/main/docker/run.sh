#!/bin/sh
echo "********************************************************"
echo "Starting the Discovery Server"
echo "********************************************************"
java -Xms350m -Xmx350m -XX:+UseParallelGC -XX:+UseParallelOldGC -XX:MaxGCPauseMillis=100 -XX:+UseAdaptiveSizePolicy \
        -Djava.security.egd=file:/dev/./urandom -jar /tmp/discovery-service/@project.build.finalName@.jar
