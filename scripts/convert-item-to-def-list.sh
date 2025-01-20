#!/bin/sh
# date: 2025-01-20
# author: HstSethi
# description: Shell script to convert markdown to Structured HTML list applying principles of Structured List Md

if [ $# -ne 1 ]; then

      echo "Need exactly one argument" >&2
        exit 1
fi

# Not using a temp file, Combined sed expressions

cmark $1 | sed -e 's/<ul>/<dl>/g' \
                    -e 's/<\/ul>/<\/dl>/g' \
                    -e 's/<li>/<dt>/g' \
                    -e 's/<\/li>/<\/dt>/g' \
                    -e 's/<p>/<dd>/g' \
                    -e 's/<\/p>/<\/dd>/g'
