#!/bin/bash

upload()
{
    # Replace id with yours here
    key=986300c20ed68d2
    curl -X POST -H "Authorization: Client-ID $key" -F "image=$1" https://api.imgur.com/3/image
    #curl --request POST --url https://api.imgur.com/3/image --header 'authorization: Client-ID YOUR_CLIENTID_HERE' --header 'content-type: multipart/form-data;' -F "image=@/LOCATION/OF/THE/IMAGE.png"
}

file="$1"
upload "@$file"