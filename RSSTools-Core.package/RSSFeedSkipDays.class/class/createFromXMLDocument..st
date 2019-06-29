private
createFromXMLDocument: anXMLDocument
	| days rssFeedSkipDays |
	days := OrderedCollection new.
	rssFeedSkipDays := (anXMLDocument xpath: '//channel/skipdays/day' asLowercase).
	rssFeedSkipDays ifNotNil: [ (rssFeedSkipDays findAllChildTags: 'day') do: [ :each | days add: each contentString ] ].
	^ self new days: days asArray
