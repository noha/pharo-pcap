as yet unclassified
initializeFrom: aPacket
	"read 6 byte dest mac, 6 bytes src mac and 2 bytes ethertype"
	 | preamble length inter rest optional |
	preamble := aPacket readByte.
	"4 LSB = IHL = header length in 32bit entities"
	length := (preamble bitAnd: 16rf) * 4.
	inter := aPacket read: 8.
	protocol := aPacket readByte.
	rest := aPacket read: 10.
	"read extra data over 20 bytes common header"
	optional := aPacket read: length - 20.
	"data := aStream upToEnd."