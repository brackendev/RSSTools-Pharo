public
from: json
	| feedsGroups |
	feedsGroups := OrderedCollection new.
	json
		do: [ :each | 
			| fg |
			fg := self new
				feedIDs: ((each at: 'feed_ids') splitOn: ',');
				groupID: (each at: 'group_id').
			feedsGroups add: fg ].
	^ feedsGroups
