export
pngExport: aView filename: aFileReference
	RTPNGExporter new 
		builder: aView;
		fileName: aFileReference asFileReference fullName;
		exportToFile.