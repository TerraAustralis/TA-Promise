*TA-Promise-Pharo
promiseBlock: aPromise
	" Answer a block that evaluates the receiver as a Promise. "

	^ [ 
	[ aPromise value: self value ]
		on: Error
		do: [ :ex | 
			" An exception is being raised. If it is non-proceedable,
					save it so that the Promise will raise it instead of returning a value. "
			aPromise exception: ex.
			ex return ] ]