actions
addToQueue
  TAPromiseGemServer gemServer
    doTransaction: [ 
      self class queue add: self.
      self class incrementSharedCounterValue ]