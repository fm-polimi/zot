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

file="sbvzotkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="bvzotkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="meezotkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml zot $file.lisp > $file.res";
run "$file" "$command";

file="nusmvsbmcinckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcincMB60 > $file.res";
run "$file" "$command";

file="nusmvsbmckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runsbmcMB60 > $file.res";
run "$file" "$command";

file="nusmvbmckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nusmv -source runbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvsbmcinckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcincMB60 > $file.res";
run "$file" "$command";

file="nuxmvsbmckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runsbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvbmckrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source runbmcMB60 > $file.res";
run "$file" "$command";

file="nuxmvcoisatkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coisatMB60 > $file.res";
run "$file" "$command";

file="nuxmvcoismtkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source coismtMB60 > $file.res";
run "$file" "$command";

file="nuxmvklivekrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source kliveMB60 > $file.res";
run "$file" "$command";

file="nuxmvmsatcoikrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatcoiMB60 > $file.res";
run "$file" "$command";

file="nuxmvmsatkrca3p2MB60";
command="runlim -o $file.tm -r $tl -s $ml nuxmv -source msatMB60 > $file.res";
run "$file" "$command";

sh nextdoit.sh