examples
exampleCreateRSSFeed 
	<sampleInstance>
	| items rssFeedItem rssFeedOptionalItems rssFeedRequiredItems |
	items := OrderedCollection new.

	rssFeedItem := RSSFeedItem new
		title: 'Item 1';
		description: 'Item Description';
		link: 'http://www.hostname.com/'.

	items add: rssFeedItem.

	rssFeedItem := RSSFeedItem new
		title: 'Item 2';
		description: 'Item Description';
		link: 'http://www.hostname.com/'.

	items add: rssFeedItem.

	rssFeedOptionalItems := RSSFeedOptionalItems new items: items.

	rssFeedRequiredItems := RSSFeedRequiredItems new
		title: 'RSS Feed';
		description: 'Feed Description';
		link: 'http://www.hostname.com/'.

	^ RSSTools
		createRSSFeedWithRSSFeedRequiredItems: rssFeedRequiredItems
		rssFeedOptionalItems: rssFeedOptionalItems