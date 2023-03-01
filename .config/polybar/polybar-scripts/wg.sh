#!/bin/sh
if sudo wg | grep -q interface;
then
        echo "嬨"
    else
        echo ""
    fi
