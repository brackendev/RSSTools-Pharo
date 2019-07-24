public
createRSSFeedWith: rssFeedRequiredItems and: rssFeedOptionalItems
	^ RSSFeed new
		requiredItems: rssFeedRequiredItems;
		optionalItems: rssFeedOptionalItems
