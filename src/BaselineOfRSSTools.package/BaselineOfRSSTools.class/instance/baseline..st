baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'XMLParser'
				with:
					[ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ].
			spec
				baseline: 'XPath'
				with: [ spec repository: 'github://pharo-contributions/XML-XPath/src' ].
			spec
				baseline: 'XMLWriter'
				with: [ spec repository: 'github://pharo-contributions/XML-XMLWriter/src' ].
			spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
			spec
				baseline: 'ZincHTTPComponents'
				with: [ spec repository: 'github://svenvc/zinc/repository' ].
			spec package: 'RSSTools-Core'.
			spec
				package: 'RSSTools-Fever'
				with: [ spec requires: #('RSSTools-Core') ].
			spec
				package: 'RSSTools-Tests'
				with: [ spec requires: #('RSSTools-Core') ]
			]
