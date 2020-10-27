private
createFrom: anXMLDocument
	| rssFeedRequiredItems |
	rssFeedRequiredItems := self new.
	(anXMLDocument xpath: '//channel/title')
		ifNotEmpty: [ rssFeedRequiredItems
				title: (anXMLDocument xpath: '//channel/title') first contentString
			].
	(anXMLDocument xpath: '//channel/description')
		ifNotEmpty: [ rssFeedRequiredItems
				description: (anXMLDocument xpath: '//channel/description') first contentString
			].
	(anXMLDocument xpath: '//channel/link')
		ifNotEmpty: [ rssFeedRequiredItems
				link: (anXMLDocument xpath: '//channel/link') first contentString
			].
	^ rssFeedRequiredItems