accessing - events
sprints
	<script: 'self sprints inspect'>
	^ (self withAll: FBAFactory sprints)
		title: 'Pharo Sprint Events';
		yourself