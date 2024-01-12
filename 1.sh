#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Brak imienia i nazwiska"
    exit 1
fi

echo "Witaj, $1 $2!"
