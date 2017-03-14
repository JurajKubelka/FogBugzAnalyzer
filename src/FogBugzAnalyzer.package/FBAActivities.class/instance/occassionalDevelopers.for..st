accessing - developers
occassionalDevelopers: developers for: activity 
	^ developers select: [ :each | (self isRegularDeveloper: each for: activity) not ]