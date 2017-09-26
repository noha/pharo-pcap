as yet unclassified
initializeFrom: aPacket
	"read 6 byte dest mac, 6 bytes src mac and 2 bytes ethertype"
	header := aPacket read: 14