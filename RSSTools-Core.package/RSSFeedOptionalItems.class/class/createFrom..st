private
createFrom: anXMLDocument
	| rssFeedOptionalItems |
	rssFeedOptionalItems := self new.
	(anXMLDocument xpath: '//channel/language' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				language:
					(anXMLDocument xpath: '//channel/language' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/rating' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				rating:
					(anXMLDocument xpath: '//channel/rating' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/copyright' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				copyright:
					(anXMLDocument xpath: '//channel/copyright' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/pubDate' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				pubDate:
					(anXMLDocument xpath: '//channel/pubdate' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/lastbuilddate' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				lastBuildDate:
					(anXMLDocument xpath: '//channel/lastBuilddate' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/category' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				category:
					(anXMLDocument xpath: '//channel/category' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/docs' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				docs:
					(anXMLDocument xpath: '//channel/docs' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/cloud' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				cloud:
					(anXMLDocument xpath: '//channel/cloud' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/ttl' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				ttl: (anXMLDocument xpath: '//channel/ttl' asLowercase) first contentString
			].
	(anXMLDocument xpath: '//channel/managingeditor' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				managingEditor:
					(anXMLDocument xpath: '//channel/managingeditor' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/webmaster' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				webMaster:
					(anXMLDocument xpath: '//channel/webmaster' asLowercase) first
						contentString
			].
	(anXMLDocument xpath: '//channel/skiphours' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				skipHours: (RSSFeedSkipHours createFrom: anXMLDocument)
			].
	(anXMLDocument xpath: '//channel/skipdays' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				skipDays: (RSSFeedSkipDays createFrom: anXMLDocument)
			].
	(anXMLDocument xpath: '//channel/item' asLowercase)
		ifNotEmpty: [ rssFeedOptionalItems
				items:
					((anXMLDocument xpath: '//channel/item' asLowercase)
						collect: [ :each | RSSFeedItem createFrom: each ])
			].
	^ rssFeedOptionalItems