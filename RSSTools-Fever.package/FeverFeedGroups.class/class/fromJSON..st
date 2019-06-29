public
fromJSON: json
	^ self new
		apiVersion: (json at: 'api_version');
		auth: ((json at: 'auth') == 1 ifTrue: [ true ] ifFalse: [ false ]);
		feedsGroups: (FeverFeedGroup fromJSON: (json at: 'feeds_groups'));
		lastRefreshedOnTime: (DateAndTime fromUnixTime: (json at: 'last_refreshed_on_time') asInteger);
		feeds: (FeverFeed fromJSON: (json at: 'feeds'))
