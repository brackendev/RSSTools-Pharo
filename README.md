RSSTools-Pharo
==============

**Objects to work with [RSS](https://en.wikipedia.org/wiki/RSS) feeds and the [Fever API](https://feedafever.com/api).**

* [Pharo 8](https://www.pharo.org/) reference platform.
* Examples and tests included.

## TODO

- [ ] Support the latest Pharo release.

## Installation

In a Pharo playground, _Do it_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/RSSTools-Pharo/src';
  baseline: 'RSSTools';
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
rssFeed := RSSTools createRSSFeedFor: 'https://gist.githubusercontent.com/brackendev/95b25e1b7128f326969eb5060f5d591c/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml'.

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

rssFeed := RSSTools createRSSFeedWith: rssFeedRequiredItems and: rssFeedOptionalItems.

"Create RSS 2.0 XML from feed object"
RSSTools createXMLWith: rssFeed.
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

## Acknowledgements

This project makes use of the following third-party libraries:

* [NeoJSON](https://github.com/svenvc/NeoJSON)
* [XMLParser](https://github.com/pharo-contributions/XML-XMLParser)
* [XMLWriter](https://github.com/pharo-contributions/XML-XMLWriter)
* [XPath](https://github.com/pharo-contributions/XML-XPath)
* [Zinc HTTP Components](https://github.com/svenvc/zinc)

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

RSSTools-Pharo is released under the MIT license. See the LICENSE file for more info.
