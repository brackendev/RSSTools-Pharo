accessing
guid: aString
	"Try:
	| hash |
	hash := HidHasher newSalt: self className.
	hash encode: DateAndTime now ticks
	or:
	UUIDGenerator default next hex asUppercase "

	guid := aString
