#!/bin/bash

source sdUtils.sh

logit "Got in here: " $(which ta)
logit $(echo $PATH | tr ":" "\n")
ta -g
