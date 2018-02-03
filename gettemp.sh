#!/bin/bash

cat /tmp/rawtemps | grep $1 | awk '{print $2}'
