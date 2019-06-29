private
createFromXMLDocument: anXMLDocument
	| rssFeedOptionalItems |
	rssFeedOptionalItems := self new.
	(anXMLDocument xpath: '//channel/language' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems language: (anXMLDocument xpath: '//channel/language' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/rating' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems rating: (anXMLDocument xpath: '//channel/rating' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/copyright' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems copyright: (anXMLDocument xpath: '//channel/copyright' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/pubDate' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems pubDate: (anXMLDocument xpath: '//channel/pubdate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/lastbuilddate' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems lastBuildDate: (anXMLDocument xpath: '//channel/lastBuilddate' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/category' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems category: (anXMLDocument xpath: '//channel/category' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/docs' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems docs: (anXMLDocument xpath: '//channel/docs' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/cloud' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems cloud: (anXMLDocument xpath: '//channel/cloud' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/ttl' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems ttl: (anXMLDocument xpath: '//channel/ttl' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/managingeditor' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems managingEditor: (anXMLDocument xpath: '//channel/managingeditor' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/webmaster' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems webMaster: (anXMLDocument xpath: '//channel/webmaster' asLowercase) first contentString ].
	(anXMLDocument xpath: '//channel/skiphours' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems skipHours: (RSSFeedSkipHours createFromXMLDocument: anXMLDocument) ].
	(anXMLDocument xpath: '//channel/skipdays' asLowercase) size > 0
		ifTrue: [ rssFeedOptionalItems skipDays: (RSSFeedSkipDays createFromXMLDocument: anXMLDocument) ].
	(anXMLDocument xpath: '//channel/item' asLowercase) size > 0
		ifTrue:
			[ rssFeedOptionalItems items: ((anXMLDocument xpath: '//channel/item' asLowercase) collect: [ :each | RSSFeedItem createFromXMLDocument: each ]) ].
	^ rssFeedOptionalItems
