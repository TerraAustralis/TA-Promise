testing
example1
	"TAPromise example1"
		" This is an example of a successful
	Promise evaluation. "
	| prom |
	prom := [3 + 4] promise.
	^prom value