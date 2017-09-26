initialize-release
on: aStream
	^ self new
		stream: aStream asBinaryStream;
		initializeHeader