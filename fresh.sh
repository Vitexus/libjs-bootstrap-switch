#!/bin/bash

if [ ! -d "bootstrap-switch" ]; then
    git clone --depth=1 https://github.com/Bttstrp/bootstrap-switch.git
    cd bootstrap-switch 
else
    cd bootstrap-switch 
    git pull
fi

bower install
