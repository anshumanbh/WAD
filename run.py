import json
import sys

results = []

with open('/tmp/tmp.csv') as fp:
    for line in fp:
        la = line.rstrip().split(',')
        ts = '{"url":"' + la[0] + '","cms":"' + la[1] + '"}'
        results.append(json.loads(ts))
        
json.dump(results, sys.stdout)
