private
createFrom: anXMLDocument
	| rssFeed |
	rssFeed := self new.
	rssFeed
		requiredItems: (RSSFeedRequiredItems createFrom: anXMLDocument).
	rssFeed
		optionalItems: (RSSFeedOptionalItems createFrom: anXMLDocument).
	rssFeed xmlDocument: anXMLDocument document.
	^ rssFeed