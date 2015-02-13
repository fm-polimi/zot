#!/bin/bash
echo "bvzotsdserverl2p1 ..."
runlim -o bvzotsdserverl2p1.time_memory -r 3600 -s 4096 zot bvzotsdserverl2p1.lisp > bvzotsdserverl2p1.res
echo "meezotsdserverl2p1 ..."
runlim -o meezotsdserverl2p1.time_memory -r 3600 -s 4096 zot2013 meezotsdserverl2p1.lisp > meezotsdserverl2p1.res
echo "nusmvsbmcincsdserverl2p1 ..."
runlim -o nusmvsbmcincsdserverl2p1.time_memory -r 3600 -s 4096 nusmv -source runsbmcinc > nusmvsbmcincsdserverl2p1.res
echo "nusmvsbmcsdserverl2p1 ..."
runlim -o nusmvsbmcsdserverl2p1.time_memory -r 3600 -s 4096 nusmv -source runsbmc > nusmvsbmcsdserverl2p1.res
echo "nusmvbmcsdserverl2p1 ..."
runlim -o nusmvbmcsdserverl2p1.time_memory -r 3600 -s 4096 nusmv -source runbmc > nusmvbmcsdserverl2p1.res

