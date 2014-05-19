#!/bin/bash

# Get time as a UNIX timestamp (seconds elapsed since Jan 1, 1970 0:00 UTC)
trace="output.dat"
wtrace="outputw.dat"
websites=("www.nitk.ac.in" "www.flipkart.com" "www.thehindu.in" "www.google.com" "www.gmail.com" "www.yahoo.com" "www.beachsideblues.com" "www.linkedin.com" "www.facebook.com" "www.twitter.com" "www.quora.com" "www.coursera.org" "www.xkcd.com" "cricket.yahoo.com" "www.stackoverflow.com" "www.youtube.com" "www.indiatimes.com" "www.snapdeal.com" "www.abstrusegoose.com" "www.github.com" "www.technewsdaily.com" "www.udacity.com" "www.edx.org" "www.wikipedia.org" "www.flickr.com" "www.netflix.com" "www.duckduckgo.com" "www.bing.com" "www.uctv.tv" "instagram.com")

for((i=0;i<${#websites[*]};i++))

do

T="$(date +%s)"
traceroute ${websites[i]} 
T="$(($(date +%s)-T))"
echo $(($i+1)) $T >> $trace

T="$(date +%s)"
wtracert ${websites[i]} 
T="$(($(date +%s)-T))"
echo $(($i+1)) $T >> $wtrace

done

