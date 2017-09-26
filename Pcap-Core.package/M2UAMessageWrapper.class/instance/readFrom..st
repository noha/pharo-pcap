acc
readFrom: aStream 
	| m2ua |
	m2ua := M2UAMSG parseFrom: aStream contents.
	(m2ua msgClass = 6 and: [ m2ua msgType = 1]) ifTrue: [ | dataTag |
		dataTag := m2ua tags detect: [:tag| tag nr = 16r300 ].
		payload := MessageTransferPartLevel3 readFrom: dataTag data readStream asBinaryStream  ]