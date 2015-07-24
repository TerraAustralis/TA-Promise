*TA-Promise-Pharo
promise
	" Answer a Promise that represents
	the result of evaluating the receiver.
	See class Promise for more information. "
	| prom |
	prom := TAPromise new.
	(self promiseBlock: prom) fork.
	^prom