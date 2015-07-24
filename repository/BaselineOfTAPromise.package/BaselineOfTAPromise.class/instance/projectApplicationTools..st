baselines
projectApplicationTools: spec
	spec
		for: #gemstone
		do: [ 
			spec
				baseline: 'GsApplicationTools'
				with: [ 
					spec
						repository: 'github://GsDevKit/gsApplicationTools:master/repository';
						loads: #('default') ] ]