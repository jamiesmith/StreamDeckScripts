#!/bin/sh

pbpaste | wc -w | awk '{printf("%s words\n", $1)}' | pbcopy
