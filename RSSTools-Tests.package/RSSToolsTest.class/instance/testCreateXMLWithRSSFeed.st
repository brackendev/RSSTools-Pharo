tests
testCreateXMLWithRSSFeed
	| feed xml |
	feed := RSSTools createRSSFeedWith: testXML1.
	xml := RSSTools createXMLWith: feed.
	self assert: xml equals: testXML2 asString
