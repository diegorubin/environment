#!/bin/bash

pysense=$(ps aux | grep pysense | grep -v "grep")

if [ "$pysense" = "ok" ]; then
    echo ""
else
    echo ""
fi
