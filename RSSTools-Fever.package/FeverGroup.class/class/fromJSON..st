public
fromJSON: json
	| groups |
	groups := OrderedCollection new.
	(json at: 'groups')
		do: [ :each | 
			| group |
			group := self new
				title: (each at: 'title');
				id: (each at: 'id').
			groups add: group ].
	^ groups
