testing
example2
	"TAPromise example2"
	" This is an example of an unsuccessful
	Promise evaluation. "
	| prom |
	prom := [self error: 'TAPromise example2 error'] promise.
	^prom value