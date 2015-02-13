#!/bin/bash
echo "bvzotkrca2p2MB30 ..."
runlim -o bvzotkrca2p2MB30.time_memory -r 3600 -s 4096 zot bvzotkrca2p2MB30.lisp > bvzotkrca2p2MB30.res
echo "bvzotkrca2p2MB60 ..."
runlim -o bvzotkrca2p2MB60.time_memory -r 3600 -s 4096 zot bvzotkrca2p2MB60.lisp > bvzotkrca2p2MB60.res
echo "bvzotkrca2p2MB90 ..."
runlim -o bvzotkrca2p2MB90.time_memory -r 3600 -s 4096 zot bvzotkrca2p2MB90.lisp > bvzotkrca2p2MB90.res
echo "meezotkrca2p2MB30 ..."
runlim -o meezotkrca2p2MB30.time_memory -r 3600 -s 4096 zot2013 meezotkrca2p2MB30.lisp > meezotkrca2p2MB30.res
echo "meezotkrca2p2MB60 ..."
runlim -o meezotkrca2p2MB60.time_memory -r 3600 -s 4096 zot2013 meezotkrca2p2MB60.lisp > meezotkrca2p2MB60.res
echo "meezotkrca2p2MB90 ..."
runlim -o meezotkrca2p2MB90.time_memory -r 3600 -s 4096 zot2013 meezotkrca2p2MB90.lisp > meezotkrca2p2MB90.res
echo "nusmvsbmcinckrca2p2MB30 ..."
runlim -o nusmvsbmcinckrca2p2MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcinckrca2p2MB30.res
echo "nusmvsbmcinckrca2p2MB60 ..."
runlim -o nusmvsbmcinckrca2p2MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB60 > nusmvsbmcinckrca2p2MB60.res
echo "nusmvsbmcinckrca2p2MB90 ..."
runlim -o nusmvsbmcinckrca2p2MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB90 > nusmvsbmcinckrca2p2MB90.res
echo "nusmvsbmckrca2p2MB30 ..."
runlim -o nusmvsbmckrca2p2MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmckrca2p2MB30.res
echo "nusmvsbmckrca2p2MB60 ..."
runlim -o nusmvsbmckrca2p2MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB60 > nusmvsbmckrca2p2MB60.res
echo "nusmvsbmckrca2p2MB90 ..."
runlim -o nusmvsbmckrca2p2MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB90 > nusmvsbmckrca2p2MB90.res
echo "nusmvbmckrca2p2MB30 ..."
runlim -o nusmvbmckrca2p2MB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmckrca2p2MB30.res
echo "nusmvbmckrca2p2MB60 ..."
runlim -o nusmvbmckrca2p2MB60.time_memory -r 3600 -s 4096 nusmv -source runbmcMB60 > nusmvbmckrca2p2MB60.res
echo "nusmvbmckrca2p2MB90 ..."
runlim -o nusmvbmckrca2p2MB90.time_memory -r 3600 -s 4096 nusmv -source runbmcMB90 > nusmvbmckrca2p2MB90.res
