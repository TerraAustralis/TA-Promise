baselines
projectGemServer: spec
	spec
		for: #gemstone
		do: [ 
			spec
				baseline: 'TAGemServer'
				with: [ 
					spec
						repository: 'github://TerraAustralis/TA-GemServer/repository';
						loads: #('default') ] ]