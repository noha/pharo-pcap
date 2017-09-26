as yet unclassified
read: aNumber
	^ swap 
		ifTrue: [ (stream next: aNumber) reversed ]
		ifFalse: [ stream next: aNumber ]