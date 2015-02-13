#!/bin/bash
echo "bvzotsdserverl3p1 ..."
runlim -o bvzotsdserverl3p1.time_memory -r 3600 -s 4096 zot bvzotsdserverl3p1.lisp > bvzotsdserverl3p1.res
echo "meezotsdserverl3p1 ..."
runlim -o meezotsdserverl3p1.time_memory -r 3600 -s 4096 zot2013 meezotsdserverl3p1.lisp > meezotsdserverl3p1.res
echo "nusmvsbmcincsdserverl3p1 ..."
runlim -o nusmvsbmcincsdserverl3p1.time_memory -r 3600 -s 4096 nusmv -source runsbmcinc > nusmvsbmcincsdserverl3p1.res
echo "nusmvsbmcsdserverl3p1 ..."
runlim -o nusmvsbmcsdserverl3p1.time_memory -r 3600 -s 4096 nusmv -source runsbmc > nusmvsbmcsdserverl3p1.res
echo "nusmvbmcsdserverl3p1 ..."
runlim -o nusmvbmcsdserverl3p1.time_memory -r 3600 -s 4096 nusmv -source runbmc > nusmvbmcsdserverl3p1.res

