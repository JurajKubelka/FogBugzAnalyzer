accessing
cases
	"All but introduction cases"
	^ self allCases select: [ :e | e isIntroCase not ]