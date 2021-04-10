#!/bin/bash

INFO="\e[32;1m"
NOTE="\e[33;1m\033[5m"
DONE="\033[0m"

echo -e ${NOTE}"Start new release"${DONE}

VERSION_NUMBER="`grep '21.04[^"]*' include/version.mk | sed 's/VERSION_NUMBER:=$(if $(VERSION_NUMBER),$(VERSION_NUMBER),21.04.\(.*\))/\1/g'`"
VERSION_NUMBER="`echo $VERSION_NUMBER | awk -F. -v OFS=. \
'NF==1{print ++$NF}; NF>1{if(length($NF+1)>length($NF))$(NF-1)++; $NF=sprintf("%0*d", length($NF), ($NF+1)%(10^length($NF))); print}'`"
echo -e ${NOTE}"21.04.$VERSION_NUMBER"${DONE}

sed -i "s/VERSION_NUMBER:=\$(if \$(VERSION_NUMBER),\$(VERSION_NUMBER),.*/VERSION_NUMBER:=\$(if \$(VERSION_NUMBER),\$(VERSION_NUMBER),21.04.$VERSION_NUMBER)/" include/version.mk

git commit -m "Change version" include/version.mk
git push
git tag v21.04.$VERSION_NUMBER -m "v21.04.$VERSION_NUMBER"
git push --follow-tags