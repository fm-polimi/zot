#!/bin/bash
echo "bvzotfischer_4_5satMB30 ..."
runlim -o bvzotfischer_4_5satMB30.time_memory -r 3600 -s 4096 zot bvzotfischer_4_5satMB30.lisp > bvzotfischer_4_5satMB30.res
echo "meezotfischer_4_5satMB30 ..."
runlim -o meezotfischer_4_5satMB30.time_memory -r 3600 -s 4096 zot2013 meezotfischer_4_5satMB30.lisp > meezotfischer_4_5satMB30.res
echo "nusmvsbmcincfischer_4_5satMB30 ..."
runlim -o nusmvsbmcincfischer_4_5satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcincfischer_4_5satMB30.res
echo "nusmvsbmcfischer_4_5satMB30 ..."
runlim -o nusmvsbmcfischer_4_5satMB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmcfischer_4_5satMB30.res
echo "nusmvbmcfischer_4_5satMB30 ..."
runlim -o nusmvbmcfischer_4_5satMB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmcfischer_4_5satMB30.res

