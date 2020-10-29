public
exampleCreateRSSFeedWithXMLDocument
<sampleInstance>
	| doc |
	doc := (XMLDOMParser
		on:
			'<?xml version="1.0"?><rss version="2.0"><channel><description>Insert witty or insightful remark here</description><link>http://example.org/</link><title>Example Feed</title><item><category /><description>Some text.</description><guid>urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a</guid><link>http://example.org/2003/12/13/atom03</link><title>Atom-Powered Robots Run Amok</title></item></channel></rss>')
		parseDocument.
	^ (RSSTools createRSSFeedWith: doc)