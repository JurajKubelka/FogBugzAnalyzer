accessing - users
occassionalUsers: users for: activity 
	^ (users copyWithoutAll: activity newcommers)
		select: [ :each | (self isRegularUser: each for: activity) not ]