"
I am an abstract dataSet. All dataSets have a style to display them and must be able to answer a bunch of value for provided objects
"
Class {
	#name : #ChartDataSet,
	#superclass : #Object,
	#instVars : [
		'name',
		'styleSheet'
	],
	#category : #'ChartJs-Core-Model'
}

{ #category : #exchange }
ChartDataSet >> atIndex: anIndex forValue: aValue [
	^ self subclassResponsibility 
]

{ #category : #color }
ChartDataSet >> color: aColor [
	self styleSheet globalSetColor: aColor
]

{ #category : #accessing }
ChartDataSet >> hasName [
	^ self name isNotNil
]

{ #category : #initialization }
ChartDataSet >> initialize [
	super initialize.
	self styleSheet: ChartStyleSheet charDataSetDefault
]

{ #category : #accessing }
ChartDataSet >> name [
	^ name
]

{ #category : #accessing }
ChartDataSet >> name: anObject [
	name := anObject
]

{ #category : #exchange }
ChartDataSet >> neoJsonObjectFor: aCollectionOfXObjects block: aBlock [
	| dico |
	dico := Dictionary new.
	dico at: #label put: self name.
	dico at: #data put: (self valuesFor: aCollectionOfXObjects block: aBlock).
	dico addAll: (self styleSheet charDataSetNeoJsonObjectForKeys: aCollectionOfXObjects values: (dico at: #data) label: self name).
	^ dico
]

{ #category : #accessing }
ChartDataSet >> styleSheet [
	^ styleSheet
]

{ #category : #accessing }
ChartDataSet >> styleSheet: anObject [
	styleSheet := anObject
]

{ #category : #querying }
ChartDataSet >> valuesFor: aCollectionOfXObjects block: aBlock [
	^ self subclassResponsibility 
]
