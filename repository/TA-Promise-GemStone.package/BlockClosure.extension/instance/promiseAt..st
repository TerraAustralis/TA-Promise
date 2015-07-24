*TA-Promise-GemStone
promiseAt: aPriority
	"Answer a Promise that represents the result of evaluating the receiver at the given priority.
	See class Promise for more information."

	| prom |
	prom := TAPromise new.
	(self promiseBlock: prom) forkAt: aPriority.
	^ prom