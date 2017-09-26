as yet unclassified
readFrom: aStream
	"read 6 byte dest mac, 6 bytes src mac and 2 bytes ethertype"
	| commonHeader length chunks |
	commonHeader := aStream read: 12.
	chunks := self readDataChunksFrom: aStream.
	chunks 
		ifNotEmpty: [
			payload := OrderedCollection new.
			payload := chunks collect: [:each|
				"protocol := chunks first protocol."
				payload add: (self readPayloadFrom: each data readStream)]]
		ifEmpty: [
			payload := Array with: UnknownProtocol new ]