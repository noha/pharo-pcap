as yet unclassified
readFrom: aStream
	| sccp |
	sccp := SCCPMessage decode: aStream contents.
	protocol := 1.
	payload := TCAPMessageWrapper readFrom: sccp data