#!/bin/bash
echo "bvzotkrca1satMB30 ..."
runlim -o bvzotkrca1satMB30.time_memory -r 3600 -s 4096 zot bvzotkrca1satMB30.lisp > bvzotkrca1satMB30.res
echo "meezotkrca1satMB30 ..."
runlim -o meezotkrca1satMB30.time_memory -r 3600 -s 4096 zot2013 meezotkrca1satMB30.lisp > meezotkrca1satMB30.res
echo "nusmvsbmcinckrca1satMB30 ..."
runlim -o nusmvsbmcinckrca1satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcinckrca1satMB30.res
echo "nusmvsbmckrca1satMB30 ..."
runlim -o nusmvsbmckrca1satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmckrca1satMB30.res
echo "nusmvbmckrca1satMB30 ..."
runlim -o nusmvbmckrca1satMB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmckrca1satMB30.res

