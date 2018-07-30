#!/bin/sh
wad -u @$1 -o /tmp/out.csv -t $2 -f csv -q > /tmp/wad.log

cat /tmp/out.csv | grep $3 | sort -u | cut -d',' -f1,2 > /tmp/tmp.csv

python run.py
