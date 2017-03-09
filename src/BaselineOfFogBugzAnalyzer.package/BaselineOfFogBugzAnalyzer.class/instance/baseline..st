baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FogBugz' with: [
				spec
					repository: 'github://JurajKubelka/FogBugz/src';
					loads: 'default' ];
			configuration: 'Roassal2' with: [ 
				spec 
					repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main';
					versionString: #stable ];
			package: #'FogBugzAnalyzer' with: [ spec requires: #( #'FogBugz' #'Roassal2' ) ];
			package: #'FogBugzAnalyzer-Tests' with: [ spec requires: #( #'FogBugzAnalyzer' ) ];
			group: 'analyzer' with: #( #'FogBugzAnalyzer' );
			group: 'tests' with: #( #'FogBugzAnalyzer-Tests' );
			group: 'default' with: #( analyzer tests ) ]