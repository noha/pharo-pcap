as yet unclassified
initializeFrom: aStream
	"skip version and reserved"
	| messageClass messageType messageLength parameters mtp3serviceInformation mtp3RoutingLabel |
	aStream next: 2.
	messageClass := aStream next.
	messageType := aStream next.
	messageLength := (aStream next: 4) asInteger.
	parameters := OrderedCollection new.
	[ aStream atEnd ] whileFalse: [ | tag length value padding |
		tag := (aStream next: 2) asInteger.
		length := (aStream next: 2) asInteger.
		value := aStream next: length - 4.
		"read padding bytes"
		((length \\ 4) > 0) ifTrue: [
			padding := aStream next: (4 - (length \\ 4)) ].
		(tag = 16r300) ifTrue: [
			data := value ].
	].
	
	