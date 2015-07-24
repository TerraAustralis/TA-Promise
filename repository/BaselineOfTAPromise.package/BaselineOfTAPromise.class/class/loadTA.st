as yet unclassified
loadTA
  "BaselineOfTerraAustralis loadTA"

  GsDeployer
    deploy: [ 
      Metacello new
        baseline: 'ZincHTTPComponents';
        repository: 'filetree:///opt/git/GsDevKit/zinc/repository';
        load: #('Core' 'WebSocket').
      Metacello new
        baseline: 'ZincHTTPComponents';
        repository: 'filetree:///opt/git/GsDevKit/zinc/repository';
        lock.
      Metacello new
        baseline: 'Seaside3';
        repository: 'filetree:///opt/git/GsDevKit/Seaside31/repository';
        load:
            #('Core' 'Development' 'JQueryUI' 'Gettext' 'Zinc' 'FastCGI' 'Email').
      Metacello new
        baseline: 'Seaside3';
        repository: 'filetree:///opt/git/GsDevKit/Seaside31/repository';
        lock.
      Metacello new
        baseline: 'TerraAustralis';
        repository: 'filetree:///opt/git/TerraAustralis/ta-nation/repository';
        load ]