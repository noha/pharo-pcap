as yet unclassified
includesProtocol: aProtocolClass 
	^ payload anySatisfy: [:each| each includesProtocol: aProtocolClass ]