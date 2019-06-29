tests
testCreateRSSFeedWithXMLDocument
	| xmlDocument |
	xmlDocument := RSSFeed createFromXMLDocument: testXML1.
	self assert: xmlDocument xml equals: testXML1.
	self assert: xmlDocument requiredItems title equals: 'Example Feed'.
	self
		assert: xmlDocument requiredItems description
		equals: 'Insert witty or insightful remark here'.
	self
		assert: (xmlDocument optionalItems items at: 1) title
		equals: 'Atom-Powered Robots Run Amok'.
	self
		assert: (xmlDocument optionalItems items at: 1) description
		equals: 'Some text.'.
	self
		assert: (xmlDocument optionalItems items at: 1) guid
		equals: 'urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a'
