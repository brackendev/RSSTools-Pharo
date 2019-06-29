public
createXMLWithRSSFeed: rssFeed
	"TODO: Refactor into smaller methods"

	^ XMLWriter new
		writeWith: [ :writer | 
			writer xml.
			writer tag: 'rss' attributes: {('version' -> '2.0')} with: [ 
			writer
				tag: 'channel'
				with: [ "requiredItems"
					rssFeed requiredItems
						ifNotNil: [ "optionalItems"
							rssFeed requiredItems description
								ifNotNil: [ writer tag: 'description' with: rssFeed requiredItems description ].
							rssFeed requiredItems link
								ifNotNil: [ writer tag: 'link' with: rssFeed requiredItems link ].
							rssFeed requiredItems title
								ifNotNil: [ writer tag: 'title' with: rssFeed requiredItems title ]
							].
					rssFeed optionalItems
						ifNotNil: [ rssFeed optionalItems category
								ifNotNil: [ writer tag: 'category' with: rssFeed optionalItems category ].
							rssFeed optionalItems cloud
								ifNotNil: [ writer tag: 'cloud' with: rssFeed optionalItems cloud ].
							rssFeed optionalItems copyright
								ifNotNil: [ writer tag: 'copyright' with: rssFeed optionalItems copyright ].
							rssFeed optionalItems docs
								ifNotNil: [ writer tag: 'docs' with: rssFeed optionalItems docs ].
							rssFeed optionalItems language
								ifNotNil: [ writer tag: 'language' with: rssFeed optionalItems language ].
							rssFeed optionalItems lastBuildDate
								ifNotNil: [ writer tag: 'lastBuildDate' with: rssFeed optionalItems lastBuildDate ].
							rssFeed optionalItems managingEditor
								ifNotNil:
									[ writer tag: 'managingEditor' with: rssFeed optionalItems managingEditor ].
							rssFeed optionalItems pubDate
								ifNotNil: [ writer tag: 'pubDate' with: rssFeed optionalItems pubDate ].
							rssFeed optionalItems rating
								ifNotNil: [ writer tag: 'rating' with: rssFeed optionalItems rating ].
							rssFeed optionalItems ttl
								ifNotNil: [ writer tag: 'ttl' with: rssFeed optionalItems ttl ].
							rssFeed optionalItems skipHours
								ifNotNil: [ writer tag: 'webMaster' with: rssFeed optionalItems webMaster ].
							"optionalItems image"
							rssFeed optionalItems image
								ifNotNil: [ writer
										tag: 'image'
										with: [ rssFeed optionalItems image description
												ifNotNil:
													[ writer tag: 'description' with: rssFeed optionalItems image description ].
											rssFeed optionalItems image height
												ifNotNil:
													[ writer tag: 'height' with: rssFeed optionalItems image height asString ].
											rssFeed optionalItems image link
												ifNotNil: [ writer tag: 'link' with: rssFeed optionalItems image link ].
											rssFeed optionalItems image title
												ifNotNil: [ writer tag: 'title' with: rssFeed optionalItems image title ].
											rssFeed optionalItems image url
												ifNotNil: [ writer tag: 'url' with: rssFeed optionalItems image url ].
											rssFeed optionalItems image width
												ifNotNil: [ writer tag: 'width' with: rssFeed optionalItems image width asString ]
											]
									].
							"optionalItems skipDays"
							rssFeed optionalItems skipDays
								ifNotNil: [ writer
										tag: 'skipDays'
										with: [ rssFeed optionalItems skipDays days
												do: [ :each | writer tag: 'day' with: each ]
											]
									].
							"optionalItems skipHours"
							rssFeed optionalItems skipHours
								ifNotNil: [ writer
										tag: 'skipHours'
										with: [ rssFeed optionalItems skipHours hours
												do: [ :each | writer tag: 'hour' with: each ]
											]
									].
							"optionalItems items"
							rssFeed optionalItems items
								ifNotNil: [ rssFeed optionalItems items
										do: [ :each | 
											writer
												tag: 'item'
												with: [ each author ifNotNil: [ writer tag: 'author' with: each author ].
													category
														ifNotNil: [ writer tag: 'category' with: each category ].
													each categoryDomain
														ifNotNil: [ writer tag: 'categoryDomain' with: each categoryDomain ].
													each comments
														ifNotNil: [ writer tag: 'comments' with: each comments ].
													each description
														ifNotNil: [ writer tag: 'description' with: each description ].
													each enclosure
														ifNotNil: [ writer tag: 'enclosure' with: each enclosure ].
													each guid
														ifNotNil: [ writer tag: 'guid' with: each guid ].
													each link
														ifNotNil: [ writer tag: 'link' with: each link ].
													each pubDate
														ifNotNil: [ writer tag: 'pubDate' with: each pubDate ].
													each source
														ifNotNil: [ writer tag: 'source' with: each source ].
													each title
														ifNotNil: [ writer tag: 'title' with: each title ]
													]
											]
									]
							]
					]
				]
			];
		contents
