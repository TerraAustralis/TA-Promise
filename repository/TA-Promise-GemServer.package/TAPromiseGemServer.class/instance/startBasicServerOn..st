service instance-server
startBasicServerOn: ignored
  "start server in current vm. for gemstone, expected to return."

  self serverClass vmStartup.
  self serverInstance: self serverClass new.
  self
    basicServerProcess:
      ([ self basicServerOn: ignored ] forkAt: Processor userBackgroundPriority)