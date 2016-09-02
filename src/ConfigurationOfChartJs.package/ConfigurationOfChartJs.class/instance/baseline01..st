baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/PharoExtras/ChartJs/main/'.
		spec 
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					version: #'release3.2';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
			project: 'Stylesheet' with: [
				spec
					className: #ConfigurationOfStylesheet;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/RMoD/Stylesheet/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ].
		spec package: #ChartJs with: [
				spec requires: #('Seaside3' 'Stylesheet' 'NeoJSON' ). ]. ].