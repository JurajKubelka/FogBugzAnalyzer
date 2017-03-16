initialization
initialize
	super initialize.
	view := RTView new.
	view @ RTDraggableView.
	mondrian := RTMondrian new.
	mondrian view: view.
