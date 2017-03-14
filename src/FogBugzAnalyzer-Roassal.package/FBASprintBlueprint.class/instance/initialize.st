initialization
initialize
	super initialize.
	view := RTView new.
	mondrian := RTMondrian new.
	mondrian view: view.
