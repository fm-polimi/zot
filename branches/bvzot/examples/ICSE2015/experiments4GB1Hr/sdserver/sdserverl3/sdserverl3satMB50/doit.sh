#!/bin/bash
echo "bvzotsdserverl3sat ..."
runlim -o bvzotsdserverl3sat.time_memory -r 3600 -s 4096 zot bvzotsdserverl3sat.lisp > bvzotsdserverl3sat.res
echo "meezotsdserverl3sat ..."
runlim -o meezotsdserverl3sat.time_memory -r 3600 -s 4096 zot2013 meezotsdserverl3sat.lisp > meezotsdserverl3sat.res
echo "nusmvsbmcincsdserverl3sat ..."
runlim -o nusmvsbmcincsdserverl3sat.time_memory -r 3600 -s 4096 nusmv -source runsbmcinc > nusmvsbmcincsdserverl3sat.res
echo "nusmvsbmcsdserverl3sat ..."Í
runlim -o nusmvsbmcsdserverl3sat.time_memory -r 3600 -s 4096 nusmv -source runsbmc > nusmvsbmcsdserverl3sat.res
echo "nusmvbmcsdserverl3sat ..."
runlim -o nusmvbmcsdserverl3sat.time_memory -r 3600 -s 4096 nusmv -source runbmc > nusmvbmcsdserverl3sat.res

