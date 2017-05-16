#!/bin/bash
#Time limit in seconds:
tl=3600;
#Memory limit in MBs:
ml=10240;

run() {
	pkill z3; pkill nusmv; pkill nuxmv;
	echo "$1 ...";
	if [ ! -f "$1.res" ] 
	then
		eval $2
	fi
}

file="sbvzotsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcincsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB50 > $file.res";
run "$file" "$command";

file="nusmvsbmcsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB50 > $file.res";
run "$file" "$command";

file="nusmvbmcsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB50 > $file.res";
run "$file" "$command";

file="nuxmvsbmcincsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB50 > $file.res";
run "$file" "$command";

file="nuxmvsbmcsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB50 > $file.res";
run "$file" "$command";

file="nuxmvbmcsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB50 > $file.res";
run "$file" "$command";

file="nuxmvcoisatsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB50 > $file.res";
run "$file" "$command";

file="nuxmvcoismtsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB50 > $file.res";
run "$file" "$command";

file="nuxmvklivesdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB50 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoisdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB50 > $file.res";
run "$file" "$command";

file="nuxmvmsatsdserverl3satMB50";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB50 > $file.res";
run "$file" "$command";