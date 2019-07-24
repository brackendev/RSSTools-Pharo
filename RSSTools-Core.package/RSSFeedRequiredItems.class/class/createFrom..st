private
createFrom: anXMLDocument
	| rssFeedRequiredItems |
	rssFeedRequiredItems := self new.
	(anXMLDocument xpath: '//channel/title') isNotEmpty
		ifTrue: [ rssFeedRequiredItems title: (anXMLDocument xpath: '//channel/title') first contentString ].
	(anXMLDocument xpath: '//channel/description') isNotEmpty
		ifTrue: [ rssFeedRequiredItems description: (anXMLDocument xpath: '//channel/description') first contentString ].
	(anXMLDocument xpath: '//channel/link') isNotEmpty
		ifTrue: [ rssFeedRequiredItems link: (anXMLDocument xpath: '//channel/link') first contentString ].
	^ rssFeedRequiredItems
