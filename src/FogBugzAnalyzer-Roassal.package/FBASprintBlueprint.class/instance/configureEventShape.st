configuration - shapes
configureEventShape
	mondrian shape box 
		color: self boxColor;
		if: [ :event | event description isEmpty ] color: Color red;
		if: [ :event | event case isIntroCase ] color: self introCaseColor.
