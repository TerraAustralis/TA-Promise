service instance-server
basicServerOn: ignored
  "forked by caller"

  [ true ]
    whileTrue: [ 
      self
        gemServer: [ 
          "process any outstanding promises"
          self serverInstance serviceLoop ].
      (Delay forMilliseconds: self delayTimeMs) wait ]