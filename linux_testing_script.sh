#!/bin/bash

URL="http://localhost:8000"
OUTPUT_FILE=$1 

echo "Testing WordPress site at $URL..."

if curl --silent --fail "$URL" > /dev/null; then
    echo "<html><body><h1><b>Test Passed Successfully !!!!</b></h1></body></html>" > $OUTPUT_FILE
    echo "Site is up. Test passed."
else
    echo "<html><body><h1>Test Failed</h1><p>Could not reach $URL</p></body></html>" > $OUTPUT_FILE
    echo "Site is down. Test failed."
fi
