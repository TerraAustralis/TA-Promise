as yet unclassified
testException
	"This is an example of an unsuccessful
	Promise evaluation."
	| promise |
	promise := [self error: 'TAPromise example2 error'] promise.
	self assert: promise hasValue.
	self should: promise value raise: Error