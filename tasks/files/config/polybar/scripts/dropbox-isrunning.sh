#!/bin/bash

dropbox=$(ps aux | grep dropbox | grep -v "grep")

echo "$dropbox"

if [ -z "$dropbox" ]; then
    echo ""
else
    echo ""
fi
