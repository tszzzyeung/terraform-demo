#!/bin/bash
curl -s $(terraform output -raw lb_ip) | awk -v RS='<style>[^>]+</style>' -v ORS= '1' | sed -e 's/<[^>]*>//g' >> final.txt
sed -e 's/[^[:alpha:]]/ /g' final.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | head -1