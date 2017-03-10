accessing - events
events
	<script: 'self events inspect'>
	^ self stringDatesAndInfo pairsCollect: [ :day :info | 
			FBAOneDayEvent new date: day asDateAndTime; info: info; yourself ] 