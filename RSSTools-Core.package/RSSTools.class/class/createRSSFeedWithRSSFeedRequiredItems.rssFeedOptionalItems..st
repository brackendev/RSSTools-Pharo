public
createRSSFeedWithRSSFeedRequiredItems: rssFeedRequiredItems rssFeedOptionalItems: rssFeedOptionalItems
	^ RSSFeed new
		requiredItems: rssFeedRequiredItems;
		optionalItems: rssFeedOptionalItems
