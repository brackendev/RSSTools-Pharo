public
createRSSFeedFor: aURLString
	| client xmlDocument |
	client := ZnEasy get: aURLString.
	xmlDocument := XMLDOMParser
		parse: client entity string readStream.
	^ RSSFeed createFrom: xmlDocument document