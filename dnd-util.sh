#!/bin/sh


name=$(basename $0 .sh)
mode=${name#dnd-*}

~/bin/do-not-disturb $mode


