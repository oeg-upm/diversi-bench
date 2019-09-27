#!/bin/bash
#properties, mapping, querypath, size,query,time
size=$1
query=$2
run=$3
typ=$4

#start time
start=$(date +%s.%N)
/Ontario/scripts/runExperiment.py -c /configurations/myconfig.json -q /queries/$query -r True
#finish time
finish=$(date +%s.%N)
#duration
dur=$(echo "$finish - $start" | bc)
#echo "$size, $query, $run, $type, $dur">>../results/results-times.csv
echo "$size, $query, $run, $typ, $dur">>../results/results-times.csv