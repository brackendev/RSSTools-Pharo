public
retrieveHotLinksForSession: aFeverSession page: anInteger days: days
	| response json links url |
	url := 'http://' , aFeverSession domain , '/fever/?api&links&offset=0&page=' , anInteger asString , '&range='
		, days asString.
	[ response := ZnClient new
		url: url;
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	links := json at: 'links'.
	^ links
	]
		on: Exception
		do: [ ^ OrderedCollection new ]
