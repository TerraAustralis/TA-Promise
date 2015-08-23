actions
processPromise
  | value |
  self performSafely: [ value := taskValuable value ].
  GRPlatform current
    doTransaction: [ 
      taskValue := value.
      hasValue := true.
      self class inProcess remove: self ].
  Transcript show: 'Completed promise ' , self printString