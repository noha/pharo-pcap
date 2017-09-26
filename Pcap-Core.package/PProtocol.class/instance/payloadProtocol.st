as yet unclassified
payloadProtocol
	^ self payloadProtocols 
		at: self payloadIdentifier 
		ifAbsent: [ UnknownProtocol new identifier: self payloadIdentifier  ]