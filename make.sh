#!/bin/bash
#
# Author : fcbruce <fcbruce8964@gmail.com>
#
# Time : Fri 21 Oct 2016 23:11:39
#
#

JAR_PATH=lib
BIN_PATH=bin
SRC_PATH=src

find $SRC_PATH -name *.java > $SRC_PATH/sources.list

rm -rf $BIN_PATH
mkdir $BIN_PATH

javac -d $BIN_PATH -classpath $JAR_PATH/xgboost4j-0.7-jar-with-dependencies.jar @$SRC_PATH/sources.list

cp -r META-INF/ bin/
cd bin/
jar cvfm main.jar META-INF/MANIFEST.MF *
mv main.jar ../
