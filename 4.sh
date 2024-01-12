#!/bin/bash

while true; do
    echo "podaj katalog"
    read sciezka

    slowa=$(find "$sciezka" -type f -name "*.txt" -exec cat {} + | tr ' ' '\n' | sort | uniq)

    if [ -z "$slowa" ]; then
        echo "brak plikow .txt"
    else
        echo "liczba slow: $(echo "$slowa" | wc -l)"
        echo "slowa: $slowa"
    fi

    read -p "kontynuowac? (y/n) " a
    if [ "$a" != "y" ]; then
        break
    fi
done
