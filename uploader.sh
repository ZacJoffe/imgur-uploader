#!/bin/bash

upload()
{
    # Replace id with yours here
    key=986300c20ed68d2
    curl -s -X POST -H "Authorization: Client-ID $key" -F "image=$1" https://api.imgur.com/3/image
}

file="$1"
output=$(upload "@$file")
link=$(echo $output | jq .'data' | jq -r .'link')
echo $link