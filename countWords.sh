#!/bin/sh

words=$(pbpaste | wc -w | awk '{printf("%s\n", $1)}')
echo $words
echo "$words words" | pbcopy
