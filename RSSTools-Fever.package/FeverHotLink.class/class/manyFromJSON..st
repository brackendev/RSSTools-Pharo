public
manyFromJSON: json
	| hotLinks |
	hotLinks := OrderedCollection new.
	json
		do: [ :each | 
			| hotLink |
			hotLink := self new
				feedID: (each at: 'feed_id');
				isItem: (each at: 'is_item') == 1;
				itemID: (each at: 'item_id');
				title: (each at: 'title');
				url: (each at: 'url');
				id: (each at: 'id');
				isLocal: (each at: 'is_local') == 1;
				temperature: (each at: 'temperature');
				isSaved: (each at: 'is_saved') == 1;
				itemIDs: ((each at: 'item_ids') splitOn: ',').
			hotLinks add: hotLink
			].
	^ hotLinks