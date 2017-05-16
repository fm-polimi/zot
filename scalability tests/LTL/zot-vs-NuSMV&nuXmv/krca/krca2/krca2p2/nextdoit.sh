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

file="sbvzotkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcinckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB90 > $file.res";
run "$file" "$command";

file="nusmvsbmckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB90 > $file.res";
run "$file" "$command";

file="nusmvbmckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvsbmcinckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB90 > $file.res";
run "$file" "$command";

file="nuxmvsbmckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvbmckrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvcoisatkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB90 > $file.res";
run "$file" "$command";

file="nuxmvcoismtkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB90 > $file.res";
run "$file" "$command";

file="nuxmvklivekrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB90 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoikrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB90 > $file.res";
run "$file" "$command";

file="nuxmvmsatkrca2p2MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB90 > $file.res";
run "$file" "$command";