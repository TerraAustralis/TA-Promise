as yet unclassified
serviceLoop
  self promisesInProcess < 100
    ifTrue: [ 
      | promises repeat |
      repeat := true.
      [ repeat and: [ self promisesInProcess < 100 ] ]
        whileTrue: [ 
          repeat := false.
          promises := #().
          GRPlatform current
            doTransaction: [ 
              TAPromise queue size > 0
                ifTrue: [ 
                  promises := TAPromise queue removeCount: 10.
                  TAPromise inProcess addAll: promises ] ].
          promises do: [ :promise | [ promise processPromise ] fork ].
          repeat := promises size > 0
            ifTrue: [ 
              (GRPlatform current doTransaction: [ TAPromise queue size > 0 ])
                and: [ self promisesInProcess < 100 ] ]
            ifFalse: [ false ] ] ]