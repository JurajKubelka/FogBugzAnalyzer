accessing - developers
regularDevelopers: developers for: activity 
	^ developers select: [ :each | self isRegularDeveloper: each for: activity ]