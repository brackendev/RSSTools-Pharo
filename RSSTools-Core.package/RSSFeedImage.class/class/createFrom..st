private
createFrom: anXMLDocument
	| rssFeedImage |
	rssFeedImage := self new.
	(anXMLDocument xpath: '//image/description' asLowercase) isNotEmpty 
		ifTrue: [ rssFeedImage description: (anXMLDocument xpath: '//item/description' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/height' asLowercase) isNotEmpty
		ifTrue: [ rssFeedImage height: (anXMLDocument xpath: '//item/height' asLowercase) first contentString asInteger ].
	(anXMLDocument xpath: '//item/link' asLowercase) isNotEmpty
		ifTrue: [ rssFeedImage link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/title' asLowercase) isNotEmpty
		ifTrue: [ rssFeedImage title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/url' asLowercase) isNotEmpty
		ifTrue: [ rssFeedImage url: (anXMLDocument xpath: '//item/url' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/width' asLowercase) isNotEmpty
		ifTrue: [ rssFeedImage width: (anXMLDocument xpath: '//item/width' asLowercase) first contentString asInteger ].
	^ rssFeedImage
