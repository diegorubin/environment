#!/bin/bash

pysense=$(ps aux | grep pysense | grep -v "grep")

if [ -z "$pysense" ]; then
    echo ""
else
    echo ""
fi
