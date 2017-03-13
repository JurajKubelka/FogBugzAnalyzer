accessing - events
events
	<script: 'self events inspect'>
	^ (self withAll: FBAFactory events)
		title: 'All Pharo Events, e.g., Sprints, Conferences, Releases';
		yourself