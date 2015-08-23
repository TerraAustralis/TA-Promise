as yet unclassified
start
  "If there is an existing gem server, stop it and unregister before starting again"

  self stop.
  self register.
  self gemServer startGems