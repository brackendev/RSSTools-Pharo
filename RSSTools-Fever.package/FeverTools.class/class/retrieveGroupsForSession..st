public
retrieveGroupsForSession: aFeverSession
	| response json |
	response := ZnClient new
		url: 'http://' , aFeverSession domain , '/fever/?api&groups';
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	^ FeverGroup fromJSON: json
