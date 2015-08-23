service instance-server
vmStartup
  "take all inProcess promises and put them back in the queue"

  GRPlatform current
    doTransaction: [ 
      (ObjectLogEntry
        debug: 'Promise Server STATS: Startup [1]'
        object:
          'queue: ' , TAPromise queue size asString , ' scv: '
            , TAPromise sharedCounterValue asString , ' hw: '
            , TAPromise idHighWater asString , ' inprocess: '
            , TAPromise inProcess size asString)
        addToLog.
      TAPromise queue addAll: TAPromise inProcess.
      TAPromise inProcess removeAll: TAPromise inProcess.
      (ObjectLogEntry
        debug: 'Promise Server STATS: Startup [2]'
        object:
          'queue: ' , TAPromise queue size asString , ' scv: '
            , TAPromise sharedCounterValue asString , ' hw: '
            , TAPromise idHighWater asString , ' inprocess: '
            , TAPromise inProcess size asString)
        addToLog ]	"prime the pump"