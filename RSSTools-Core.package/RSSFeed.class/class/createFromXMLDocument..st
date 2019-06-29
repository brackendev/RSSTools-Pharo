private
createFromXMLDocument: anXMLDocument
	| rssFeed |
	rssFeed := self new.
	rssFeed requiredItems: (RSSFeedRequiredItems createFromXMLDocument: anXMLDocument).
	rssFeed optionalItems: (RSSFeedOptionalItems createFromXMLDocument: anXMLDocument).
	rssFeed xml: anXMLDocument document.
	^ rssFeed
