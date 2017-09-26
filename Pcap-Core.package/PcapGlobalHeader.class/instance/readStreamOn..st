as yet unclassified
readStreamOn: aStream
	^ (EndianessAwareBinaryStream on: aStream)
		swap: swap