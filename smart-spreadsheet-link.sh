#!/bin/bash

link=$(pbpaste | cut -d \# -f 1)

shorter=${link##https://github.com/elastic/}
if [ "$shorter" != "$link" ]
then
    repo=$(echo ${shorter%%/issues/*} | sed 's|product-marketing|pmktg|g;s|website-www.elastic.co|web|g')
    issue=${shorter##*/issues/}
    text="${repo} #${issue}"
else
    text="link"
fi

cell="=HYPERLINK(\"${link}\",\"${text}\")"

# echo $cell now in clipboard
echo -n $cell | pbcopy
