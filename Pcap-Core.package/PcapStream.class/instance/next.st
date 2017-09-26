as yet unclassified
next
	^ (PcapPacket readFrom: stream swap: header swap)
		decodeProtocol: (self class linkTypeNumbered: header linkType)