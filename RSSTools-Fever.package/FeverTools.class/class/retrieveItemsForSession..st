public
retrieveItemsForSession: aFeverSession
	| response json |
	response := ZnClient new
		url: 'http://' , aFeverSession domain , '/fever/?api&items';
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	^ FeverItem fromJSON: (json at: 'items')
