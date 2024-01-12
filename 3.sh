#!/bin/bash

echo "podaj email"
read email

regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

if [[ $email =~ $regex ]]; then
    echo "prawidlowy adres email"
else
    echo "niewlasciwy adres email"
fi
