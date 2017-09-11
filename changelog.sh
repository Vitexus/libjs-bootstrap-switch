#!/bin/bash
VERSION=`cat bootstrap-switch/package.json | grep '"version":' | awk -F '"'  '{ print $4 }'`
#CHANGES=`cat CHANGELOG.md | awk -vRS="##" 'NR<=2' ORS="##" | grep -v "##"`

if [ -e "build" ]; then
  BUILD=`cat  build | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`
else
  BUILD="1";
fi

dch -v $VERSION-$BUILD --package libjs-bootstrap-switch 

echo $BUILD > build
