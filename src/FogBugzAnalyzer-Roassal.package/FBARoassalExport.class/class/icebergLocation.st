accessing
icebergLocation
	| iceberg repository |
	iceberg := self environment classNamed: #IceRepository.
	iceberg ifNil: [ ^ FileLocator workingDirectory ].
	repository := iceberg registry detect: [ :eachRepository | 
		eachRepository name = 'FogBugzAnalyzer' ] ifNone: nil.
	repository ifNil: [ ^ FileLocator workingDirectory ].
	^ repository location / 'assets' / 'img'