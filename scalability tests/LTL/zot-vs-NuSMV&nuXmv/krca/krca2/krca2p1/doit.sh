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

file="sbvzotkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcinckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB60 > $file.res";
run "$file" "$command";

file="nusmvsbmckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB60 > $file.res";
run "$file" "$command";

file="nusmvbmckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvsbmcinckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB60 > $file.res";
run "$file" "$command";

file="nuxmvsbmckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvbmckrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvcoisatkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB60 > $file.res";
run "$file" "$command";

file="nuxmvcoismtkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB60 > $file.res";
run "$file" "$command";

file="nuxmvklivekrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB60 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoikrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB60 > $file.res";
run "$file" "$command";

file="nuxmvmsatkrca2p1MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB60 > $file.res";
run "$file" "$command";

sh nextdoit.sh