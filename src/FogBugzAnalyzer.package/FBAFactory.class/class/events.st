accessing - events
events
	<script: 'self events inspect'>
	^ self stringDatesAndInfo pairsCollect: [ :day :info | 
			FBAEvent new date: day asDateAndTime; info: info; yourself ] 