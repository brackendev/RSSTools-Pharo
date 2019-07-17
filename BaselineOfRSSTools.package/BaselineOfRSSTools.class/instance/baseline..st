baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParser'
				with: [ spec
						className: 'ConfigurationOfXMLParser';
						loads: #('default');
						versionString: #stable;
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'
					].
			spec
				project: 'XPath'
				with: [ spec
						className: 'ConfigurationOfXPath';
						loads: #('default');
						versionString: #stable;
						file: 'ConfigurationOfXPath';
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'
					].
			spec
				project: 'XMLWriter'
				with: [ spec
						className: 'ConfigurationOfXMLWriter';
						versionString: #stable;
						file: 'ConfigurationOfXMLWriter';
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main';
						loads: #('Core')
					].
			spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			spec
				baseline: 'ZincHTTPComponents'
				with: [ spec repository: 'github://svenvc/zinc:master/repository' ].
			spec
				package: 'RSSTools-Core'
					with: [ spec
						requires: #('XMLParser' 'XPath' 'XMLWriter' 'NeoJSON' 'ZincHTTPComponents')
					];
				package: 'RSSTools-Fever'
					with: [ spec requires: #('RSSTools-Core') ];
				package: 'RSSTools-Tests'
					with: [ spec requires: #('RSSTools-Core') ].
			spec
				group: 'default'
				with: [ #('RSSTools-Core' 'RSSTools-Fever' 'RSSTools-Tests') ]
			]
