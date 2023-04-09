#!/bin/bash

if [ "${1,,}" = yes ]; then
    echo YES
else
    echo NO
fi

read -p "Enter words: " words
echo $words
echo "${words,,}"
