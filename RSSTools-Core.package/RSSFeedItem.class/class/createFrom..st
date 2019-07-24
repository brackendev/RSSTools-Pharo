private
createFrom: anXMLDocument
	| rssFeedItem |
	rssFeedItem := self new.
	(anXMLDocument xpath: '//item/title' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/description' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem description: (anXMLDocument xpath: '//item/description' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/guid' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem guid: (anXMLDocument xpath: '//item/guid' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/link' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/author' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem author: (anXMLDocument xpath: '//item/author' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/category' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem category: (anXMLDocument xpath: '//item/category' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/categorydomain' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem categoryDomain: (anXMLDocument xpath: '//item/categorydomain' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/comments' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem comments: (anXMLDocument xpath: '//item/comments' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/enclosure' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem enclosure: (anXMLDocument xpath: '//item/enclosure' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/pubDate' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem pubDate: (anXMLDocument xpath: '//item/pubDate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/source' asLowercase) isNotEmpty
		ifTrue: [ rssFeedItem source: (anXMLDocument xpath: '//item/source' asLowercase) first contentString ].
	^ rssFeedItem
