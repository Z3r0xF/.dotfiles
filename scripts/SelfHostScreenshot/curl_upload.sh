#!/bin/bash
url=$SHS_URL
echo "FILE $1"
response=$(curl -s -F "file=@$1" -H "X-API-Key: $SHS_API_KEY" "$url/upload")
echo $response
link=$(echo $response | jq -r '.link')
echo "Upload link: $url$link"
# Open the response link in the default browser
if [ -n "$link" ]; then
    xdg-open "$url$link"
else
    echo "Failed to upload the image."
fi

