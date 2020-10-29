private
createFrom: anXMLDocument
	| rssFeedItem |
	rssFeedItem := self new.
	(anXMLDocument xpath: '//item/title' asLowercase)
		ifNotEmpty: [ rssFeedItem
				title: (anXMLDocument xpath: '//item/title' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/description' asLowercase)
		ifNotEmpty: [ rssFeedItem
				description:
					(anXMLDocument xpath: '//item/description' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/guid' asLowercase)
		ifNotEmpty: [ rssFeedItem
				guid: (anXMLDocument xpath: '//item/guid' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/link' asLowercase)
		ifNotEmpty: [ rssFeedItem
				link: (anXMLDocument xpath: '//item/link' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/author' asLowercase)
		ifNotEmpty: [ rssFeedItem
				author: (anXMLDocument xpath: '//item/author' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//item/category' asLowercase)
		ifNotEmpty: [ rssFeedItem
				category:
					(anXMLDocument xpath: '//item/category' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/categorydomain' asLowercase)
		ifNotEmpty: [ rssFeedItem
				categoryDomain:
					(anXMLDocument xpath: '//item/categorydomain' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/comments' asLowercase)
		ifNotEmpty: [ rssFeedItem
				comments:
					(anXMLDocument xpath: '//item/comments' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/enclosure' asLowercase)
		ifNotEmpty: [ rssFeedItem
				enclosure:
					(anXMLDocument xpath: '//item/enclosure' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/pubDate' asLowercase)
		ifNotEmpty: [ rssFeedItem
				pubDate:
					(anXMLDocument xpath: '//item/pubDate' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//item/source' asLowercase)
		ifNotEmpty: [ rssFeedItem
				source: (anXMLDocument xpath: '//item/source' asLowercase) first contentString
			].
	^ rssFeedItem