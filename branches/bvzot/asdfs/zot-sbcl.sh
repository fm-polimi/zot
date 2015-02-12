#! /bin/bash

function zot () { 
  if (( $# != 1 ))
  then 
  	printf "usage: zot <filename>\n" 
  else	
  	sbcl --noinform --load $1 --eval "(quit)"
  fi	
}

