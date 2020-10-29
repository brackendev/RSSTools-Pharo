public
from: json
	| items |
	items := OrderedCollection new.
	json
		do: [ :each | 
			| item |
			item := self new
				id: (each at: 'id');
				feedID: (each at: 'feed_id');
				title: (each at: 'title');
				author: (each at: 'author');
				html: (each at: 'html');
				url: (each at: 'url');
				isSaved: (each at: 'is_saved') == 1;
				isRead: (each at: 'is_read') == 1;
				createdOnTime: (DateAndTime fromUnixTime: (each at: 'created_on_time') asInteger).
			items add: item
			].
	^ items