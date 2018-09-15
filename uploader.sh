#!/bin/bash

# upload image to imgur using curl, returns raw json 
upload()
{
    # Replace id with yours here
    key=986300c20ed68d2
    curl -s -X POST -H "Authorization: Client-ID $key" -F "image=$1" https://api.imgur.com/3/image
}

# put output of upload function into var, passing directory of image as an arg
output=$(upload "@$1")

# use jq to parse the output and echo link
echo $output | jq .'data' | jq -r .'link'

# when script is ran, pipe output to xclip to copy link to clipboard