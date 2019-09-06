"
I'm selecting only jpg file or PNG file
"
Class {
	#name : #FDJPGOrPNGFilter,
	#superclass : #FDAbstractCompositeFilter,
	#category : #'NewTools-FileDialog-Filtering'
}

{ #category : #initialization }
FDJPGOrPNGFilter >> initialize [
	collectionOfFDAbstractFilter := OrderedCollection new.
	collectionOfFDAbstractFilter add: FDDotJPGFilter new.
	collectionOfFDAbstractFilter add: FDDotPNGFilter new
]

{ #category : #accessing }
FDJPGOrPNGFilter >> name [
	^ '.jpg and .png filter'
]

{ #category : #accessing }
FDJPGOrPNGFilter >> predicate: aFileReference [
	^ collectionOfFDAbstractFilter
		anySatisfy: [ :aFileFilter | aFileFilter predicate: aFileReference  ]
]