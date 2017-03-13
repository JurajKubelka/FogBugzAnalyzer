accessing
info
	^ String streamContents: [ :aStream |
		(self startingEvent ifNotNil: #info)
			ifNotNil: [ :infoString | aStream << 'after ''' << infoString << ''', ' ].
		(self endingEvent ifNotNil: #info)
			ifNotNil: [ :infoString | aStream << 'before ''' << infoString << '''' ] ]
