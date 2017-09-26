accessing
includesProtocol: aProtocolClass
	^ (self class = aProtocolClass) or: [ payload includesProtocol: aProtocolClass ] 