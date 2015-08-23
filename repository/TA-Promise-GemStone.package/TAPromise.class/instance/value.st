accessing
value
  "Answer the value computed by the child process.  If the child terminated 	with an exception,	
	raise that exception in the parent instead of answering a value. "

  exception == nil
    ifTrue: [ ^ taskValue ]
    ifFalse: [ exception signal ]