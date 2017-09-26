as yet unclassified
decodeProtocol: aProtocolClass
	packet := aProtocolClass readFrom: packetData readStream asBinaryStream.
	