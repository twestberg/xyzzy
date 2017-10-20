#!/bin/bash
dpkg -i bx-solano-0.1.0-20170829035036.deb
bx mkimage tmp 32m
bx list
bx stop
bx proxy-halt
exit 0
