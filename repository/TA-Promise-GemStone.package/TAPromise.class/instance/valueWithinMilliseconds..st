accessing
valueWithinMilliseconds: millisecondsToWait
  | startMilliseconds |
  "Wait milliseconds for a value or return nil."
  startMilliseconds := Time now asMilliseconds.
  [ 
  GRPlatform current doAbortTransaction.
  self hasValue ]
    whileFalse: [ 
      (Delay forMilliseconds: 50) wait.
      Time now asMilliseconds >= (startMilliseconds + millisecondsToWait)
        ifTrue: [ ^ nil ] ].
  ^ self value