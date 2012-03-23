# Filtro awk per estrarre risultati da test Zot
# MPradella, MMIX

function write_data() {
	if (count>0) { 
		print next_label,error"; "bound"; "arr[0]"; "arr[1]"; "arr[2]"; "arr[0]+arr[1]+arr[2]"; "!unsat"; "memory"; "literals"; "nodes"; "variables"; "clauses"; ";
		count=0; unsat=0; memory="NA"; nodes=0; literals=0; variables=0; clauses=0; bound=0;
		error=0;
	}
}

BEGIN{
    count=0; unsat=0; memory="NA"; nodes=0; literals=0; variables=0; clauses=0; bound=0;
    error=0;
    print "\"00Test name\"; ERRORS?; Bound; Formula (s); CNF (s); Solver (s); Total (s); SAT?; Memory (MB); Literals; Nodes; CNF variables; CNF clauses; "
}

END{write_data()}


/unhandled/{ error = 1 }

/Time bound:/{ bound = $3 }

/seconds/{ arr[count++]=$1 }
	
/UNSAT/{ unsat=1 }

/c Memory used/{ memory = $5 }  # minisat
/^Memory used/{ memory = $4 }   # manysat

/Solved by unit propagation/{ memory = "UP" }

/Pre-CNF/{ 
    nodes = $4; 
    literals = $9;
}

/Greatest used variable/{ variables = $4 }

/Generated clauses/{ clauses = $3 }

/:::/{ write_data() }

# this is the file name
/out-/{ title=$0 }

# this is the descriptive string
/\$/{
    write_data(); # dump the previous
    
    # ... and prepare the next
    id = match($0,/=[0-9]+/);
    #	bound=substr($0,id+1,3);
    next_label = sprintf("\"%s %s\"; ", title, $0);
} 
