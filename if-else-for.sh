#!/bin/bash

################################
# Author: Varun
# Date: 30-05-2024
# Description: To print numbers between 1 - 100 which are divisible by 3 or 5 but not 15
################################

for i in {1..100}; do
if ([ `expr i % 3` -eq 0 ] || [ `expr i % 5` -eq 0 ]) && [ `expr $i % 15` != 0 ]; then
echo $i
fi
done
