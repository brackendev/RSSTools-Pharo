public
retrieveHotLinksFor: aFeverSession days: days
	| allResults hotLinks |
	allResults := OrderedCollection new.
	hotLinks := [ :page | 
	| results |
	results := self
		retrieveHotLinksFor: aFeverSession
		page: page
		days: days.
	results
		ifEmpty: [ ^ allResults ]
		ifNotEmpty: [ allResults addAll: results.
			hotLinks value: page + 1
			]
	].
	hotLinks value: 1