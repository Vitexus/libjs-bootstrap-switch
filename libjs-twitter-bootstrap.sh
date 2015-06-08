#!/bin/bash

if [ ! -d "bootstrap-switch" ]; then
    git clone https://github.com/nostalgiaz/bootstrap-switch.git
    cd bootstrap-switch 
else
    cd bootstrap-switch 
    git pull
fi

BULID=5
VERSION=`cat package.json | grep '"version":' | awk -F '"'  '{ print $4 }'`
#CHANGES=`cat CHANGELOG.md | awk -vRS="##" 'NR<=2' ORS="##" | grep -v "##"`
#tar -czf ~/Projects/Packaging/libjs-twitter-bootstrap/libjs-twitter-bootstrap_$VERSION.orig.tar.gz .
#dch -v $VERSION-1 --package libjs-twitter-bootstrap $CHANGES

cd ..

dch -v $VERSION-$BUILD --package libjs-twitter-bootstrap-switch 

debuild -i -us -uc -b

cd ..
#~/bin/publish-deb-packages.sh
