accessing
preSprintDays
	<script: 'self preSprintDays inspect'>
	^ self sprints flatCollect: [ :sprint | 
		{ sprint date - 4 days. sprint date - 3 days. sprint date - 2 days. sprint date - 1 days } ] 