instance creation
newBoxPlotDataSet
	| data |
	data := RTBoxPlotDataSet new.
	data showMean: true.
	^ data