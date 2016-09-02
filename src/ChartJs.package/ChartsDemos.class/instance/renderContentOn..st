rendering
renderContentOn: html
	| chartData |
	
	chartData := ChartData
		xObjects:
			{'Eating'.
			'Drinking'.
			'Sleeping'.
			'Designing'.
			'Coding'.
			'Cycling'.
			'Running'}
		multiYObjects:
			{{65.
			59.
			90.
			81.
			56.
			55.
			40}.
			{28.
			48.
			40.
			19.
			96.
			27.
			100}}.
			
	selectedNode ifNotNil: [ html heading level: 3; with: 'Selected node: ', selectedNode asString ].
			
	ChartType subclasses
		do: [ :aCharType | 
			aCharType isMultiDataSet
				ifTrue: [ 
					chartData chartType: aCharType.
					html render: (ChartJsComponent data: chartData callback: [:node | selectedNode := node]) ] ]