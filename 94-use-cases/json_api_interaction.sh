#!/usr/bin/env bash
# Example of parsing JSON output from a HTTP request using jq.

hash jq 2>/dev/null || { >&2 echo "jq must be installed: https://stedolan.github.io/jq/" ; exit 1; }

# Sending a GET returns 10 random Wikipedia articles (JSON)
url='https://en.wikipedia.org/w/api.php?action=query&list=random&rnlimit=10&rnnamespace=0&format=json'
curl -s $url | jq -r '.query .random [] .title'
