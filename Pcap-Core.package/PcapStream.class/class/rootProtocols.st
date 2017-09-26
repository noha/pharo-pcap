as yet unclassified
rootProtocols
	^ PProtocol allSubclasses 
		select: [:protocol| protocol canBePcapRoot ]
