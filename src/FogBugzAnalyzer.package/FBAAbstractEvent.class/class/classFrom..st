accessing
classFrom: aString 
	^ self allSubclasses detect: [ :aClass | aClass identification = aString ]