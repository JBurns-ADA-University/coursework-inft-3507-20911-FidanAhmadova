#!/bin/bash

URL="https://cloudroom-unreliablebanking-747241312189.europe-west1.run.app/getbalance"
OUT="responses.csv"

echo "timestamp,http_code" > $OUT

for i in {1..120}
do
  timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  code=$(curl -s -o /dev/null -w "%{http_code}" $URL)
  echo "$timestamp,$code" >> $OUT
  sleep 1
done

echo "Data collection completed."
