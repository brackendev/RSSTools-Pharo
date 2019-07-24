public
retrieveFeedsFor: aFeverSession
	| response json |
	response := ZnClient new
		url: 'http://' , aFeverSession domain , '/fever/?api&feeds';
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	^ FeverFeedGroups from: json
