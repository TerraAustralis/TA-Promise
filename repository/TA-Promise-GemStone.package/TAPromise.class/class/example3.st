testing
example3
	"TAPromise example3"
	" This is an example of an unsuccessful
	Promise evaluation, where the child process
	terminates prematurely. "
	| prom |
	prom := [Processor terminateActive] promise.
	^prom value