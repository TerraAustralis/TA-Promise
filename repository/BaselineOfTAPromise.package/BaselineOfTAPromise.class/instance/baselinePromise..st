baselines
baselinePromise: spec
	spec
		for: #gemstone
		do: [ 
			spec package: 'TA-Promise-GemServer'.
			spec package: 'TA-Promise-GemStone' with: #('TA-Promise-GemServer').
			spec package: 'TA-Tests-Promise-GemStone' with: #('TA-Promise-GemStone').
			spec
				group: 'Promise Core' with: #('TA-Promise-GemStone');
				group: 'Promise Tests' with: #('TA-Tests-Promise-GemStone') ].
	spec
		for: #pharo
		do: [ 
			spec package: 'TA-Promise-Pharo'.
			spec
				group: 'Promise Core' with: #('TA-Promise-Pharo');
				group: 'Promise Tests' with: #('TA-Tests-Promise-Pharo') ].
	spec
		for: #common
		do: [ 
			spec
				group: 'default' with: #('development');
				group: 'development' with: #('Promise Core' 'Promise Tests');
				group: 'deploy' with: #('Promise Core') ]