#!/bin/bash

dropbox=$(ps aux | grep dropbox-dist | grep -v "grep")

if [ -z "$dropbox" ]; then
    echo ""
else
    echo ""
fi
