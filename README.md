RSSTools-Pharo
==============

**Objects to work with [RSS](https://en.wikipedia.org/wiki/RSS) feeds and the [Fever API](https://feedafever.com/api).**

* [Pharo 8.0](https://www.pharo.org/) reference platform.
* Examples and tests included.

## Installation

In a Pharo playground, _Do it_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/RSSTools-Pharo/src';
  baseline: 'RSSTools';
  onConflict: [ :ex | ex useIncoming ];
  onUpgrade: [ :ex | ex useIncoming ];
  onDowngrade: [ :ex | ex useLoaded ];
  ignoreImage;
  load.
```

## Example Usage

### RSS Feeds

In a Playground, _Do it_:

```smalltalk
RSSTools exampleCreateRSSFeedWithURL.
RSSTools exampleCreateRSSFeedWithXMLDocument.
RSSTools exampleXMLDocumentWithRSSFeed.
```

```smalltalk
"Create RSS feed object from RSS 2.0 URL"
rssFeed := RSSTools createRSSFeedWith: 'https://gist.githubusercontent.com/ToddG/1974651/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml'.

"Create RSS 2.0 XML from feed object"
RSSTools createXMLWith: rssFeed.
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

RSSTools createRSSFeedWith: rssFeedRequiredItems and: rssFeedOptionalItems.
```

### Fever API

In a Playground, _Do it_:

```smalltalk
"Create a Fever session"
feverSession := FeverSession sessionWith: 'domain.com' email: 'fever@domain.com' password: 'password'.

"Retrieve feeds"
FeverTools retrieveFeedsFor: feverSession.

"Retrieve groups"
FeverTools retrieveGroupsFor: feverSession.

"Retrieve Hot Links"
FeverTools retrieveHotLinksFor: feverSession page: 1 days: 1.

"Retrieve items"
FeverTools retrieveItemsFor: feverSession.
```

## TODO

- [ ] Support Pharo 9 (when stable)

## Acknowledgements

This project makes use of the following third-party libraries:

* [NeoJSON](https://github.com/svenvc/NeoJSON)
* [XMLParser](http://www.smalltalkhub.com/#!/~PharoExtras/XMLParser)
* [XMLWriter](http://www.smalltalkhub.com/#!/~PharoExtras/XMLWriter)
* [XPath](http://www.smalltalkhub.com/#!/~PharoExtras/XPath)
* [Zinc HTTP Components](https://github.com/svenvc/zinc)

## Author

[brackendev](https://www.github.com/brackendev)

## License

RSSTools-Pharo is released under the MIT license. See the LICENSE file for more info.
