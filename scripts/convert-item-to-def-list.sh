#!/bin/sh
sed -i -e 's/<ul>/<dl>/g' \
                    -e 's/<\/ul>/<\/dl>/g' \
                    -e 's/<li>/<dt>/g' \
                    -e 's/<\/li>/<\/dt>/g' \
                    -e 's/<p>/<dd>/g' \
                    -e 's/<\/p>/<\/dd>/g' $1
