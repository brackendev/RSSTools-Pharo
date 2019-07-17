baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XPath'
				with: [ spec
						className: #ConfigurationOfXPath;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XPath/main/'
					].spec
				baseline: 'XMLParser'
				with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].
			spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			spec
				baseline: 'ZincHTTPComponents'
				with: [ spec repository: 'github://svenvc/zinc:master/repository' ].
			spec package: 'RSSTools-Core'.
			spec package: 'RSSTools-Fever'.
			spec package: 'RSSTools-Tests'
			]
