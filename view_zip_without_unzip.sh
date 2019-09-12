#!/bin/bash
path="/home/tmp/"
        for i in $( ls $path | grep .zip ); do
        echo ""
        echo "FIle name " : $i
            zip -sf $i
        done
