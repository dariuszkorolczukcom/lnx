#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Podaj nazwe pliku."
    exit 1
fi

echo "Liczba linii w $1: $(wc -l < "$1")"
