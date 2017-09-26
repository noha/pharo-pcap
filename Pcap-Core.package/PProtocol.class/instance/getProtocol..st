as yet unclassified
getProtocol: aProtocolClass 
	(self class = aProtocolClass) 
		ifFalse: [ ^ payload getProtocol: aProtocolClass  ] 