#!/bin/bash
echo "bvzotkrca1p2MB30 ..."
runlim -o bvzotkrca1p2MB30.time_memory -r 3600 -s 4096 zot bvzotkrca1p2MB30.lisp > bvzotkrca1p2MB30.res
echo "bvzotkrca1p2MB60 ..."
runlim -o bvzotkrca1p2MB60.time_memory -r 3600 -s 4096 zot bvzotkrca1p2MB60.lisp > bvzotkrca1p2MB60.res
echo "bvzotkrca1p2MB90 ..."
runlim -o bvzotkrca1p2MB90.time_memory -r 3600 -s 4096 zot bvzotkrca1p2MB90.lisp > bvzotkrca1p2MB90.res
echo "meezotkrca1p2MB30 ..."
runlim -o meezotkrca1p2MB30.time_memory -r 3600 -s 4096 zot2013 meezotkrca1p2MB30.lisp > meezotkrca1p2MB30.res
echo "meezotkrca1p2MB60 ..."
runlim -o meezotkrca1p2MB60.time_memory -r 3600 -s 4096 zot2013 meezotkrca1p2MB60.lisp > meezotkrca1p2MB60.res
echo "meezotkrca1p2MB90 ..."
runlim -o meezotkrca1p2MB90.time_memory -r 3600 -s 4096 zot2013 meezotkrca1p2MB90.lisp > meezotkrca1p2MB90.res
echo "nusmvsbmcinckrca1p2MB30 ..."
runlim -o nusmvsbmcinckrca1p2MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcinckrca1p2MB30.res
echo "nusmvsbmcinckrca1p2MB60 ..."
runlim -o nusmvsbmcinckrca1p2MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB60 > nusmvsbmcinckrca1p2MB60.res
echo "nusmvsbmcinckrca1p2MB90 ..."
runlim -o nusmvsbmcinckrca1p2MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB90 > nusmvsbmcinckrca1p2MB90.res
echo "nusmvsbmckrca1p2MB30 ..."
runlim -o nusmvsbmckrca1p2MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmckrca1p2MB30.res
echo "nusmvsbmckrca1p2MB60 ..."
runlim -o nusmvsbmckrca1p2MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB60 > nusmvsbmckrca1p2MB60.res
echo "nusmvsbmckrca1p2MB90 ..."
runlim -o nusmvsbmckrca1p2MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB90 > nusmvsbmckrca1p2MB90.res
echo "nusmvbmckrca1p2MB30 ..."
runlim -o nusmvbmckrca1p2MB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmckrca1p2MB30.res
echo "nusmvbmckrca1p2MB60 ..."
runlim -o nusmvbmckrca1p2MB60.time_memory -r 3600 -s 4096 nusmv -source runbmcMB60 > nusmvbmckrca1p2MB60.res
echo "nusmvbmckrca1p2MB90 ..."
runlim -o nusmvbmckrca1p2MB90.time_memory -r 3600 -s 4096 nusmv -source runbmcMB90 > nusmvbmckrca1p2MB90.res
