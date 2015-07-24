accessing
exception: anException
	" Record that the child terminated with an exception, and answer true.  If the exception
	has already been recorded, do nothing and answer false.
	Only BlockClosure>>promise should send this message. "

	^ exception isNil
		ifTrue: [ 
			exception := anException.
			hasValue := true.
			monitor signal.
			true ]
		ifFalse: [ false ]