as yet unclassified
initializeFrom: aStream
	"we test if the magic number is 0xa1b2c3d4. If not bytes need to be swapped."
	|  stream |
	swap := (aStream next: 4) ~= #[ 161 178 195 212 ].
	stream := self readStreamOn: aStream.
	majorVersion := stream readShort.
	minorVersion := stream readShort.
	timeZone := stream readInt.
	sigFigs := stream readInt.
	maxLength := stream readInt.
	network := stream readInt