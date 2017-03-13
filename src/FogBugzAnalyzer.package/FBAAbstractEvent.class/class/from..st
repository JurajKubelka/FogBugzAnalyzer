instance creation
from: readStream 
	^ (self classFrom: readStream next)
			newInstance: readStream