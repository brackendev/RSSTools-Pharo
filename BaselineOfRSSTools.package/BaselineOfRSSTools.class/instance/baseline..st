baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].
			spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: #stable;
				file: 'ConfigurationOfXPath';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'].
			spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			spec baseline: 'ZincHTTPComponents' with: [ spec repository: 'github://svenvc/zinc:master/repository' ].
			spec package: 'RSSTools-Core'.
			spec
				package: 'RSSTools-Fever'
				with: [ spec requires: #('RSSTools-Core') ].
			spec
				package: 'RSSTools-Tests'
				with: [ spec requires: #('RSSTools-Core') ]
			]
