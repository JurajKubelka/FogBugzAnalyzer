accessing
realCases
	"All but introduction cases"
	^ self cases select: [ :e | e isIntroCase not ]