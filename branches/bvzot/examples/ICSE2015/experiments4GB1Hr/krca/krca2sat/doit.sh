#!/bin/bash
echo "bvzotkrca2satMB30 ..."
runlim -o bvzotkrca2satMB30.time_memory -r 3600 -s 4096 zot bvzotkrca2satMB30.lisp > bvzotkrca2satMB30.res
echo "meezotkrca2satMB30 ..."
runlim -o meezotkrca2satMB30.time_memory -r 3600 -s 4096 zot2013 meezotkrca2satMB30.lisp > meezotkrca2satMB30.res
echo "nusmvsbmcinckrca2satMB30 ..."
runlim -o nusmvsbmcinckrca2satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcinckrca2satMB30.res
echo "nusmvsbmckrca2satMB30 ..."
runlim -o nusmvsbmckrca2satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmckrca2satMB30.res
echo "nusmvbmckrca2satMB30 ..."
runlim -o nusmvbmckrca2satMB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmckrca2satMB30.res
