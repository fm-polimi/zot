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

file="sbvzotkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcinckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB90 > $file.res";
run "$file" "$command";

file="nusmvsbmckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB90 > $file.res";
run "$file" "$command";

file="nusmvbmckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvsbmcinckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB90 > $file.res";
run "$file" "$command";

file="nuxmvsbmckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvbmckrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB90 > $file.res";
run "$file" "$command";

file="nuxmvcoisatkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB90 > $file.res";
run "$file" "$command";

file="nuxmvcoismtkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB90 > $file.res";
run "$file" "$command";

file="nuxmvklivekrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB90 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoikrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB90 > $file.res";
run "$file" "$command";

file="nuxmvmsatkrca3p1MB90";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB90 > $file.res";
run "$file" "$command";