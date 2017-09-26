as yet unclassified
readFrom: aStream
	| serviceInformation routingLabel  |
	serviceInformation := aStream readByte.
	routingLabel := (aStream next: 4).
	serviceIndicator := serviceInformation bitAnd: 15.
	payload := self readPayloadFrom: aStream upToEnd readStream.
