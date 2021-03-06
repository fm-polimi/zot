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

file="sbvzotsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcincsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB120 > $file.res";
run "$file" "$command";

file="nusmvsbmcsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB120 > $file.res";
run "$file" "$command";

file="nusmvbmcsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvsbmcincsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB120 > $file.res";
run "$file" "$command";

file="nuxmvsbmcsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvbmcsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvcoisatsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB120 > $file.res";
run "$file" "$command";

file="nuxmvcoismtsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB120 > $file.res";
run "$file" "$command";

file="nuxmvklivesdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB120 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoisdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB120 > $file.res";
run "$file" "$command";

file="nuxmvmsatsdserverl3p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB120 > $file.res";
run "$file" "$command";