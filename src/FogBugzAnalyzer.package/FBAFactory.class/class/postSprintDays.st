accessing - events
postSprintDays
	<script: 'self postSprintDays inspect'>
	^ self sprints flatCollect: [ :sprint | 
		{ sprint date + 1 days. sprint date + 2 days. sprint date + 3 days. sprint date + 4 days } ] 