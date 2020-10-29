private
createFrom: anXMLDocument
	| days rssFeedSkipHours |
	days := OrderedCollection new.
	rssFeedSkipHours := anXMLDocument xpath: '//channel/skiphours/day' asLowercase.
	rssFeedSkipHours ifNotNil: [ (rssFeedSkipHours findAllChildTags: 'hour') do: [ :each | days add: each contentString ] ].
	^ self new days: days asArray
