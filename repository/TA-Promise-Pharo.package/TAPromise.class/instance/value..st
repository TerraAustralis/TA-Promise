accessing
value: resultValue
	"Set the resulting value. Only BlockClosure>>promise should send this message."

	value := resultValue.
	hasValue := true.
	monitor signal