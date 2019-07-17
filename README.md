RSSTools-Pharo
==============

**Objects to work with [RSS](https://en.wikipedia.org/wiki/RSS) feeds and the [Fever API](https://feedafever.com/api).**

* [Pharo 7.0](http://pharo.org/) reference platform.
* Examples and tests included.

## Installation

In a Pharo playground, evaluate:

```smalltalk
Metacello new 
  repository: 'github://brackendev/RSSTools-Pharo';
  baseline: 'RSSTools';
  load.
```

## Example Usage

### RSS Feeds

In a Pharo playground, evaluate:

```smalltalk
RSSTools exampleCreateRSSFeedWithURL.
```

```smalltalk
RSSTools exampleCreateRSSFeedWithXMLDocument.
```

```smalltalk
RSSTools exampleXMLDocumentWithRSSFeed.
```

```smalltalk
"Create RSS feed object from RSS 2.0 URL"
rssFeed := RSSTools createRSSFeedWithURL: 'https://gist.githubusercontent.com/ToddG/1974651/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml'.

"Create RSS 2.0 XML from feed object"
RSSTools createXMLWithRSSFeed: rssFeed.
```

```smalltalk
"Create RSS feed object"

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

rssFeedOptionalItems := RSSFeedOptionalItems new 
items: items.

rssFeedRequiredItems := RSSFeedRequiredItems new 
title: 'RSS Feed';
description: 'Feed Description';
link: 'http://www.hostname.com/'.

RSSTools createRSSFeedWithRSSFeedRequiredItems: rssFeedRequiredItems rssFeedOptionalItems: rssFeedOptionalItems.
```

### Fever API

In a Pharo playground, evaluate:

```smalltalk
"Create a Fever session"
feverSession := FeverSession sessionWithDomain: 'domain.com' email: 'fever@domain.com' password: 'password'.

"Retrieve feeds"
FeverTools retrieveFeedsForSession: feverSession.

"Retrieve groups"
FeverTools retrieveGroupsForSession: feverSession.

"Retrieve Hot Links"
FeverTools retrieveHotLinksForSession: feverSession page: 1 days: 1.

"Retrieve items"
FeverTools retrieveItemsForSession: feverSession.

```

## Acknowledgements

* [Shaun Inman](https://shauninman.com/) for [Fever](https://feedafever.com/) (no longer maintained).
* [Sven Van Caekenberghe](https://github.com/svenvc) and [contributors](https://github.com/svenvc/zinc/graphs/contributors) for the [Zinc HTTP Components](http://stfx.eu), the open-source Smalltalk framework to deal with the HTTP networking protocol.
* The [Pharo team](https://github.com/orgs/pharo-project/people) and [contributors](https://github.com/pharo-project/pharo/graphs/contributors) for [Pharo](http://pharo.org/), the pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback.

## Author

[brackendev](https://www.github.com/brackendev)

## License

RSSTools-Pharo is released under the MIT license. See the LICENSE file for more info.
