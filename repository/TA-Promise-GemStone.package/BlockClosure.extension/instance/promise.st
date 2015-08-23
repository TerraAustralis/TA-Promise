*TA-Promise-GemStone
promise
  " Answer a Promise that represents
	the result of evaluating the receiver.
	See class Promise for more information. "

  | prom |
  (prom := TAPromise valuable: self) addToQueue.
  ^ prom