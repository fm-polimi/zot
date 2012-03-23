(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar Trel 2)
(defvar Treq 3)

(load "examples/modelAllocator-ax.lisp")

#|
(bezot:zot 10 
	   (&& init bridge-2 (!! the-trio-system)) 
	   :transitions (append good-boys allocator))
|#

(bezot::neg-zot 10 
	   (&& init bridge-2 the-trio-system (alw (cons 'and good-boys) ))
	   :transitions allocator)

#|
(loop for k from 1 to 100 do
      (when (time (bezot:zot k (&& init property) 
			     :transitions (append good-boys allocator)))
	(format t "~%Found k = ~S~%" k)   
	(return nil)))
|#

