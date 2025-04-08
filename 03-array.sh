#!/bin/bash

FRUITS=("apple" "mango" "pineapple")

echo "First value :${$FRUITS[0]}"
echo "second value: ${$FRUITS[1]}"
echo "all values : ${$FRUITS[@]}"