private
createFrom: anXMLDocument
	| rssFeedImage |
	rssFeedImage := self new.
	(anXMLDocument xpath: '//image/description' asLowercase)
		ifNotEmpty: [ rssFeedImage
				description:
					(anXMLDocument xpath: '//item/description' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/height' asLowercase)
		ifNotEmpty: [ rssFeedImage
				height:
					(anXMLDocument xpath: '//item/height' asLowercase) first contentString
						asInteger
			].
	(anXMLDocument xpath: '//item/link' asLowercase)
		ifNotEmpty: [ rssFeedImage
				link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/title' asLowercase)
		ifNotEmpty: [ rssFeedImage
				title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/url' asLowercase)
		ifNotEmpty: [ rssFeedImage
				url: (anXMLDocument xpath: '//item/url' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/width' asLowercase)
		ifNotEmpty: [ rssFeedImage
				width:
					(anXMLDocument xpath: '//item/width' asLowercase) first contentString
						asInteger
			].
	^ rssFeedImage