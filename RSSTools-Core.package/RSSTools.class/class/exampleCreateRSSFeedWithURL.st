public
exampleCreateRSSFeedWithURL
	^ (RSSTools
		createRSSFeedWithURL:
			'https://gist.githubusercontent.com/ToddG/1974651/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml')
		inspect
