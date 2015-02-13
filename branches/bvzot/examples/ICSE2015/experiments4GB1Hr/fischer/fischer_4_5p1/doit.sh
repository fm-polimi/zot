#!/bin/bash
echo "bvzotfischer_4_5p1MB30 ..."
runlim -o bvzotfischer_4_5p1MB30.time_memory -r 3600 -s 4096 zot bvzotfischer_4_5p1MB30.lisp > bvzotfischer_4_5p1MB30.res
echo "bvzotfischer_4_5p1MB60 ..."
runlim -o bvzotfischer_4_5p1MB60.time_memory -r 3600 -s 4096 zot bvzotfischer_4_5p1MB60.lisp > bvzotfischer_4_5p1MB60.res
echo "bvzotfischer_4_5p1MB90 ..."
runlim -o bvzotfischer_4_5p1MB90.time_memory -r 3600 -s 4096 zot bvzotfischer_4_5p1MB90.lisp > bvzotfischer_4_5p1MB90.res
echo "meezotfischer_4_5p1MB30 ..."
runlim -o meezotfischer_4_5p1MB30.time_memory -r 3600 -s 4096 zot2013 meezotfischer_4_5p1MB30.lisp > meezotfischer_4_5p1MB30.res
echo "meezotfischer_4_5p1MB60 ..."
runlim -o meezotfischer_4_5p1MB60.time_memory -r 3600 -s 4096 zot2013 meezotfischer_4_5p1MB60.lisp > meezotfischer_4_5p1MB60.res
echo "meezotfischer_4_5p1MB90 ..."
runlim -o meezotfischer_4_5p1MB90.time_memory -r 3600 -s 4096 zot2013 meezotfischer_4_5p1MB90.lisp > meezotfischer_4_5p1MB90.res
echo "nusmvsbmcincfischer_4_5p1MB30 ..."
runlim -o nusmvsbmcincfischer_4_5p1MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB30 > nusmvsbmcincfischer_4_5p1MB30.res
echo "nusmvsbmcincfischer_4_5p1MB60 ..."
runlim -o nusmvsbmcincfischer_4_5p1MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB60 > nusmvsbmcincfischer_4_5p1MB60.res
echo "nusmvsbmcincfischer_4_5p1MB90 ..."
runlim -o nusmvsbmcincfischer_4_5p1MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcincMB90 > nusmvsbmcincfischer_4_5p1MB90.res
echo "nusmvsbmcfischer_4_5p1MB30 ..."
runlim -o nusmvsbmcfischer_4_5p1MB30.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB30 > nusmvsbmcfischer_4_5p1MB30.res
echo "nusmvsbmcfischer_4_5p1MB60 ..."
runlim -o nusmvsbmcfischer_4_5p1MB60.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB60 > nusmvsbmcfischer_4_5p1MB60.res
echo "nusmvsbmcfischer_4_5p1MB90 ..."
runlim -o nusmvsbmcfischer_4_5p1MB90.time_memory -r 3600 -s 4096 nusmv -source runsbmcMB90 > nusmvsbmcfischer_4_5p1MB90.res
echo "nusmvbmcfischer_4_5p1MB30 ..."
runlim -o nusmvbmcfischer_4_5p1MB30.time_memory -r 3600 -s 4096 nusmv -source runbmcMB30 > nusmvbmcfischer_4_5p1MB30.res
echo "nusmvbmcfischer_4_5p1MB60 ..."
runlim -o nusmvbmcfischer_4_5p1MB60.time_memory -r 3600 -s 4096 nusmv -source runbmcMB60 > nusmvbmcfischer_4_5p1MB60.res
echo "nusmvbmcfischer_4_5p1MB90 ..."
runlim -o nusmvbmcfischer_4_5p1MB90.time_memory -r 3600 -s 4096 nusmv -source runbmcMB90 > nusmvbmcfischer_4_5p1MB90.res
