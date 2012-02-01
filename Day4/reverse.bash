#!/usr/bin/env bash
if [[ -z "$1" ]]
then
  echo "Usage: $0 'string'" >&2
  echo "Please use ASCII :(" >&2
  exit 1
fi
curl --data-ascii "str=$1" http://sinatra2.hectorsq.com/reverse 2>/dev/null |
  grep "The reversed string is" |
  sed 's/<p>The reversed string is *- \([^<]*\)<\/p>/\1/'
