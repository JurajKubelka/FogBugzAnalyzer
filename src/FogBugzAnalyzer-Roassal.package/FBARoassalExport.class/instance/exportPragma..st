export
exportPragma: aPragma
	| view |
	view := self perform: aPragma methodSelector.
	self pngExport: view filename: self location / (aPragma argumentAt: 2)