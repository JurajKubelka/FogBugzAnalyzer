accessing - events
events
	<script: 'self events inspect'>
	^ Array streamContents: [ :stream | | arrayStream |
			arrayStream := self stringDatesAndInfo readStream.
			[ arrayStream atEnd ] whileFalse: [  
				stream << (FBAAbstractEvent from: arrayStream) ] ]