#!/bin/bash
echo "bvzotsdserverl2sat ..."
runlim -o bvzotsdserverl2sat.time_memory -r 3600 -s 4096 zot bvzotsdserverl2sat.lisp > bvzotsdserverl2sat.res
echo "meezotsdserverl2sat ..."
runlim -o meezotsdserverl2sat.time_memory -r 3600 -s 4096 zot2013 meezotsdserverl2sat.lisp > meezotsdserverl2sat.res
echo "nusmvsbmcincsdserverl2sat ..."
runlim -o nusmvsbmcincsdserverl2sat.time_memory -r 3600 -s 4096 nusmv -source runsbmcinc > nusmvsbmcincsdserverl2sat.res
echo "nusmvsbmcsdserverl2sat ..."
runlim -o nusmvsbmcsdserverl2sat.time_memory -r 3600 -s 4096 nusmv -source runsbmc > nusmvsbmcsdserverl2sat.res
echo "nusmvbmcsdserverl2sat ..."
runlim -o nusmvbmcsdserverl2sat.time_memory -r 3600 -s 4096 nusmv -source runbmc > nusmvbmcsdserverl2sat.res

