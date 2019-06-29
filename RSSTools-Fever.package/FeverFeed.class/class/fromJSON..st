public
fromJSON: json
	| feeds |
	feeds := OrderedCollection new.
	json
		do: [ :each | 
			| feed |
			feed := self new
				id: (each at: 'id');
				faviconID: (each at: 'favicon_id');
				title: (each at: 'title');
				url: (each at: 'url');
				siteURL: (each at: 'site_url');
				isSpark:
					((each at: 'is_spark') == 1
						ifTrue: [ true ]
						ifFalse: [ false ]);
				lastUpdatedOnTime: (DateAndTime fromUnixTime: (each at: 'last_updated_on_time') asInteger).
			feeds add: feed ].
	^ feeds
