accessing
timezones
	^ self collect: [ :event | event date timeZoneName ] as: Set