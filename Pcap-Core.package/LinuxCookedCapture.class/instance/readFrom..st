as yet unclassified
readFrom: aStream
	"read packet type(2), LL addr type(2) LL addr len(2) source(6)"
	packetType := aStream readShort.
	linkLayerAddressType := aStream readShort.
	linkLayerAddressLength := aStream readShort.
	source := aStream read: 8.
	protocol := aStream readShort.
	payload := self readPayloadFrom: (aStream upToEnd readStream).