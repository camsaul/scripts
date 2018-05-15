#! /usr/bin/env bash

set -e

~/use-java-8.sh

if [ ! `command -v spark-submit` ]; then
    brew install apache-spark
fi

spark-submit \
    --master local[8] \
    --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 \
    spark-internal
