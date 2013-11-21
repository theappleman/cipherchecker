#!/bin/bash

TOCHECK=${$1:?Needz host:port}

./cc.sh $1 | egrep "CBC|RC4|MD5"
