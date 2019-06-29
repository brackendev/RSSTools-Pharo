private
createFromXMLDocument: anXMLDocument
	| rssFeedItem |
	rssFeedItem := self new.
	(anXMLDocument xpath: '//item/title' asLowercase) size > 0
		ifTrue: [ rssFeedItem title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/description' asLowercase) size > 0
		ifTrue: [ rssFeedItem description: (anXMLDocument xpath: '//item/description' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/guid' asLowercase) size > 0
		ifTrue: [ rssFeedItem guid: (anXMLDocument xpath: '//item/guid' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/link' asLowercase) size > 0
		ifTrue: [ rssFeedItem link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/author' asLowercase) size > 0
		ifTrue: [ rssFeedItem author: (anXMLDocument xpath: '//item/author' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/category' asLowercase) size > 0
		ifTrue: [ rssFeedItem category: (anXMLDocument xpath: '//item/category' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/categorydomain' asLowercase) size > 0
		ifTrue: [ rssFeedItem categoryDomain: (anXMLDocument xpath: '//item/categorydomain' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/comments' asLowercase) size > 0
		ifTrue: [ rssFeedItem comments: (anXMLDocument xpath: '//item/comments' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/enclosure' asLowercase) size > 0
		ifTrue: [ rssFeedItem enclosure: (anXMLDocument xpath: '//item/enclosure' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/pubDate' asLowercase) size > 0
		ifTrue: [ rssFeedItem pubDate: (anXMLDocument xpath: '//item/pubDate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//item/source' asLowercase) size > 0
		ifTrue: [ rssFeedItem source: (anXMLDocument xpath: '//item/source' asLowercase) first contentString ].
	^ rssFeedItem
