service instance-server
startServerOn: port
  "start server in current vm. for gemstone, not expected to return."

  self serverClass vmStartup.
  self serverInstance: self serverClass new.
  super startServerOn: port