public
createRSSFeedWithURL: aString
	^ RSSFeed createFromXMLDocument: (XMLHTMLParser parseURL: aString)
