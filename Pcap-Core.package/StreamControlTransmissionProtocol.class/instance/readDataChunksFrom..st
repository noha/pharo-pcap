as yet unclassified
readDataChunksFrom: aStream
	| dataChunks chunk count |
	count := 1.
	dataChunks := OrderedCollection new.
	[  
		chunk := self readChunkFrom: aStream.
		(chunk class = SCTPDataChunk) ifTrue: [
			dataChunks add: chunk].
		count := count + 1.
		chunk isEndChunk or: [ aStream atEnd ] ] whileFalse.
	^ dataChunks 
	