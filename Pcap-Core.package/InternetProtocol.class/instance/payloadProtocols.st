as yet unclassified
payloadProtocols 
	^ Dictionary new
		"at: 6 put: TransmissionControlProtocol;"
		at: 132 put: StreamControlTransmissionProtocol;
		yourself 