public
retrieveItemsFor: aFeverSession
	| response json |
	response := ZnClient new
		url: 'http://' , aFeverSession domain , '/fever/?api&items';
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	^ FeverItem from: (json at: 'items')
