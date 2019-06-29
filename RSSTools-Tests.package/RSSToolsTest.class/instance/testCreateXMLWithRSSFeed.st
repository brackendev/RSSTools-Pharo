tests
testCreateXMLWithRSSFeed
	| feed xml |
	feed := RSSTools createRSSFeedWithXMLDocument: testXML1.
	xml := RSSTools createXMLWithRSSFeed: feed.
	self assert: xml equals: testXML2 asString
