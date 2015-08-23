as yet unclassified
stop
  self gemServer
    ifNotNil: [ 
      self gemServer stopGems.
      self unregister ]