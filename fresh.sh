#!/bin/bash

if [ ! -d "bootstrap-switch" ]; then
    git clone https://github.com/nostalgiaz/bootstrap-switch.git
    cd bootstrap-switch 
else
    cd bootstrap-switch 
    git pull
fi

bower install
