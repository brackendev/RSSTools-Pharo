public
sessionWith: aDomainString email: anEmailString password: aPasswordString
	^ self new
		domain: aDomainString;
		email: anEmailString;
		password: aPasswordString;
		yourself
