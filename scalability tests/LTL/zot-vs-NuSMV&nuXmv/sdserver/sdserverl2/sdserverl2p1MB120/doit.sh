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

file="sbvzotsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcincsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB120 > $file.res";
run "$file" "$command";

file="nusmvsbmcsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB120 > $file.res";
run "$file" "$command";

file="nusmvbmcsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvsbmcincsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB120 > $file.res";
run "$file" "$command";

file="nuxmvsbmcsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvbmcsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB120 > $file.res";
run "$file" "$command";

file="nuxmvcoisatsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB120 > $file.res";
run "$file" "$command";

file="nuxmvcoismtsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB120 > $file.res";
run "$file" "$command";

file="nuxmvklivesdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB120 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoisdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB120 > $file.res";
run "$file" "$command";

file="nuxmvmsatsdserverl2p1MB120";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB120 > $file.res";
run "$file" "$command";