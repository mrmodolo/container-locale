#!/bin/sh

cd /opt/app

java -classpath ./:slf4j-simple-1.7.30.jar:slf4j-api-1.7.30.jar -Dorg.slf4j.simpleLogger.showDateTime=true -D"org.slf4j.simpleLogger.dateTimeFormat=yyyy-MM-dd HH:mm:ss:SSS Z" Building
