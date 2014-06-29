#!/bin/bash

echo "  Compiling projects.... "

function compileProject {
    target=$1
    cd $target
    if !(mvn clean install); then
        echo "  $1 failed to compile!"
        exit $?
        cd ../
    fi
    cd ../
}

compileProject Kyoka-API
compileProject Kyoka-Server
