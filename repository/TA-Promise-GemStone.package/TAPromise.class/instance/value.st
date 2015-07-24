accessing
value
	"Answer the value computed by the child process.  If the child terminated 	with an exception,	
	raise that exception in the parent instead of answering a value. "

	monitor wait.
	monitor signal.	" Permit multiple requests for the value. "
	exception == nil
		ifTrue: [ ^ value ]
		ifFalse: [ exception signal ]