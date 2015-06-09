#!/bin/bash

if [ ! -d "bootstrap-switch" ]; then
    git clone https://github.com/nostalgiaz/bootstrap-switch.git
    cd bootstrap-switch 
else
    cd bootstrap-switch 
    git pull
fi

if [ -e "../build" ]; then
  BUILD=`cat  ../build | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`
else
  BUILD="1";
fi
echo $BUILD > ../build
VERSION=`cat package.json | grep '"version":' | awk -F '"'  '{ print $4 }'`
#CHANGES=`cat CHANGELOG.md | awk -vRS="##" 'NR<=2' ORS="##" | grep -v "##"`
#tar -czf ~/Projects/Packaging/libjs-twitter-bootstrap/libjs-twitter-bootstrap_$VERSION.orig.tar.gz .
#dch -v $VERSION-1 --package libjs-twitter-bootstrap $CHANGES

cd ..

dch -v $VERSION-$BUILD --package libjs-twitter-bootstrap-switch 

debuild -i -us -uc -b

cd ..
#~/bin/publish-deb-packages.sh
