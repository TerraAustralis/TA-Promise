as yet unclassified
testSuccessful
	"This is an example of a successful
	Promise evaluation."
	| promise |
	promise := [3 + 4] promise.
	self assert: promise hasValue.
	self assert: promise value = 7