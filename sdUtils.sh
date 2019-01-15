#!/bin/bash

function logit
{
        echo $* >> /tmp/sd.log
}

export PATH=${PATH}:~/Dropbox/bin