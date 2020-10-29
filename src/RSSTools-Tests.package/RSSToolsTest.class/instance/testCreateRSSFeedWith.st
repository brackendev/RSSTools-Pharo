tests
testCreateRSSFeedWith
	| rssFeed |
	rssFeed := RSSFeed createFrom: testXML1.
	self assert: rssFeed requiredItems title equals: 'Example Feed'.
	self
		assert: rssFeed requiredItems description
		equals: 'Insert witty or insightful remark here'.
	self
		assert: (rssFeed optionalItems items at: 1) title
		equals: 'Atom-Powered Robots Run Amok'.
	self
		assert: (rssFeed optionalItems items at: 1) description
		equals: 'Some text.'.
	self
		assert: (rssFeed optionalItems items at: 1) guid
		equals: 'urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a'