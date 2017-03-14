accessing
releaseBefore: aFBAActivity 
	(self indexOf: aFBAActivity) + 1 to: self size do: [ :index | 
		(self at: index) isRelease ifTrue: [ ^ (self at: index) ] ].
	^ nil.