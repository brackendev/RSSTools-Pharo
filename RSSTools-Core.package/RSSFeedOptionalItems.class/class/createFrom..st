private
createFrom: anXMLDocument
	| rssFeedOptionalItems |
	rssFeedOptionalItems := self new.
	(anXMLDocument xpath: '//channel/language' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems language: (anXMLDocument xpath: '//channel/language' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/rating' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems rating: (anXMLDocument xpath: '//channel/rating' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/copyright' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems copyright: (anXMLDocument xpath: '//channel/copyright' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/pubDate' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems pubDate: (anXMLDocument xpath: '//channel/pubdate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/lastbuilddate' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems lastBuildDate: (anXMLDocument xpath: '//channel/lastBuilddate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/category' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems category: (anXMLDocument xpath: '//channel/category' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/docs' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems docs: (anXMLDocument xpath: '//channel/docs' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/cloud' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems cloud: (anXMLDocument xpath: '//channel/cloud' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/ttl' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems ttl: (anXMLDocument xpath: '//channel/ttl' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/managingeditor' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems managingEditor: (anXMLDocument xpath: '//channel/managingeditor' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/webmaster' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems webMaster: (anXMLDocument xpath: '//channel/webmaster' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/skiphours' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems skipHours: (RSSFeedSkipHours createFrom: anXMLDocument) ].
	(anXMLDocument xpath: '//channel/skipdays' asLowercase) isNotEmpty
		ifTrue: [ rssFeedOptionalItems skipDays: (RSSFeedSkipDays createFrom: anXMLDocument) ].
	(anXMLDocument xpath: '//channel/item' asLowercase) isNotEmpty
		ifTrue:
			[ rssFeedOptionalItems items: ((anXMLDocument xpath: '//channel/item' asLowercase) collect: [ :each | RSSFeedItem createFrom: each ]) ].
	^ rssFeedOptionalItems
