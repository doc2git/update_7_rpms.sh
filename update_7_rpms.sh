#!/usr/bin/bash
su root -c 'nodes=`find /var/cache/yum/x86_64/7 -type f |  grep rpm$ | xargs realpath | xargs`; function lnit { ln -s $1 /var/cache/yum/x86_64/7_rpms/ ; }; for file in $nodes; do lnit $file ; done;' ;
