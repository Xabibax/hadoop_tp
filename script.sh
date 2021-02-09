#!/bin/sh
JAR=$HADOOP_PREFIX/hadoop-examples-*.jar
MAPS=20
SAMPLES_PER_MAP=10000
hadoop fs -put loremIpsum-75 lorem75_5
hadoop fs -put loremIpsum-75 lorem75_10
hadoop fs -put loremIpsum-75 lorem75_20
hadoop fs -rmr wordcount*
hadoop fs -rmr grep*

# hadoop jar $JAR wordcount lorem25 wordcount25
hadoop jar $JAR wordcount lorem75 wordcount75
hadoop jar $JAR wordcount lorem75_5 wordcount75_5
hadoop jar $JAR wordcount lorem75_10 wordcount75_10
hadoop jar $JAR wordcount lorem75_20 wordcount75_20
# hadoop jar $JAR wordcount lorem100 wordcount100

# hadoop jar $JAR grep lorem25 grep25 'Aliquam'
# hadoop jar $JAR grep lorem75 grep75 'Aliquam'
# hadoop jar $JAR grep lorem100 grep100 'Aliquam'

# hadoop jar $JAR pi $MAPS $SAMPLES_PER_MAP
