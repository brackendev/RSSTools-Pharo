private
createFrom: anXMLDocument
	| rssFeedImage |
	rssFeedImage := self new.
	(anXMLDocument xpath: '//image/description' asLowercase) size > 0
		ifTrue: [ rssFeedImage description: (anXMLDocument xpath: '//item/description' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/height' asLowercase) size > 0
		ifTrue: [ rssFeedImage height: (anXMLDocument xpath: '//item/height' asLowercase) first contentString asInteger ].
	(anXMLDocument xpath: '//item/link' asLowercase) size > 0
		ifTrue: [ rssFeedImage link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/title' asLowercase) size > 0
		ifTrue: [ rssFeedImage title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/url' asLowercase) size > 0
		ifTrue: [ rssFeedImage url: (anXMLDocument xpath: '//item/url' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/width' asLowercase) size > 0
		ifTrue: [ rssFeedImage width: (anXMLDocument xpath: '//item/width' asLowercase) first contentString asInteger ].
	^ rssFeedImage
