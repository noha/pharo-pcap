as yet unclassified
getProtocol: aProtocolClass 
	payload do: [:each|
		(each getProtocol: aProtocolClass) ifNotNil: [:data|
			^ data ] ].
	Error signal: 'not found'