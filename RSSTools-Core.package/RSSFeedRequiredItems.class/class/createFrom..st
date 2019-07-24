private
createFrom: anXMLDocument
	| rssFeedRequiredItems |
	rssFeedRequiredItems := self new.
	(anXMLDocument xpath: '//channel/title') size > 0
		ifTrue: [ rssFeedRequiredItems title: (anXMLDocument xpath: '//channel/title') first contentString ].
	(anXMLDocument xpath: '//channel/description') size > 0
		ifTrue: [ rssFeedRequiredItems description: (anXMLDocument xpath: '//channel/description') first contentString ].
	(anXMLDocument xpath: '//channel/link') size > 0
		ifTrue: [ rssFeedRequiredItems link: (anXMLDocument xpath: '//channel/link') first contentString ].
	^ rssFeedRequiredItems
