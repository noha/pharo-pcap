as yet unclassified
linkTypeNumbered: aNumber
	^ self rootProtocols 
		detect: [:protocol|
			protocol pcapLinkType = aNumber ]
		ifNone: [ Error signal: 'unknown root protocol']