accessing
dates
	<script: 'self dates inspect'>
	^ self stringDatesAndInfo pairsCollect: [ :day :info | 
			FBADate new date: day asDateAndTime; info: info; yourself ] 