as yet unclassified
readFrom: aStream
	"read 6 byte dest mac, 6 bytes src mac and 2 bytes ethertype"
	 | preamble headerLength inter rest optionalHeader totalLength data |
	preamble := aStream readByte.
	"4 LSB = IHL = header length in 32bit entities"
	headerLength := (preamble bitAnd: 16rf) * 4.
	"TOS"
	aStream readByte.
	totalLength := aStream readShort.
	"skip identification to TTL"
	inter := aStream read: 5.
	protocol := aStream readByte.
	"skip checksum and addresses"
	rest := aStream read: 10.
	"read extra data over 20 bytes common header"
	optionalHeader := aStream read: headerLength - 20.
	data := aStream next: totalLength - headerLength.
	payload := self readPayloadFrom: data readStream