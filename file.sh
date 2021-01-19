#!/bin/bash
echo Your container args are: "$@"
cd /root/lynda-dl && python lynda-dl.py -d /root/dlcourses $@
chmod a+rwx /root/dlcourses
