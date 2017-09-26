as yet unclassified
readFrom: aStream swap: aBoolean
	| stream |
	stream := (EndianessAwareBinaryStream on: aStream) swap: aBoolean.
	seconds := stream readInt.
	microSeconds := stream readInt.
	includedLength  := stream readInt.
	originalLength  := stream readInt.
	packetData := stream next: includedLength.