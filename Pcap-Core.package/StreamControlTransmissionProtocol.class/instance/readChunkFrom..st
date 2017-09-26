as yet unclassified
readChunkFrom: aStream
	| type flags length extra data padding result  |
	type := aStream readByte. 
	flags := aStream readByte.
	length := aStream readShort.
	data := aStream next: length - 4.
	padding := length \\ 4.
	(type = 0) ifTrue: [ | stream |
		stream := data readStream asBinaryStream.
		extra := stream read: 8.
		protocol := stream readInt.
		result := SCTPDataChunk new flags: flags; protocol: protocol; data: stream upToEnd  ]
		ifFalse: [
			result := SCTPUnknownChunk new flags: flags ].
	(padding > 0) ifTrue: [
		aStream next: (4 - length \\ 4)].
	^result