baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec repository: 'github://TerraAustralis/TA-Promise/repository' ].
	self
		baselineProjects: spec;
		baselinePromise: spec