A Promise represents a value that is being computed by a concurrently executing process.  An attempt to read the value of a Promise will wait until the process has finished computing it.  If the process terminates with an exception, an attempt to read the value of the Promise will raise the same exception.

Instance Variables:
	monitor	<Semaphore>  tells the consumers there is information available
	value	<Object>  the return value
	hasValue	<Boolean>  indicates the return value has been set, or that an error has occurred
	exception	<Exception>  If an error occurs, this describes the error

Class Variables:
	TerminateSignal	<Signal>  used as a replacement for Process terminateSignal, so that other processes don't get terminated when they try to read the value of a Promise


Object Reference:
In everyday terms, an accountant who has not yet computed a particular client's balance typically gives a promise to supply that number in the future. In Smalltalk, a Promise computes the value of a block in a separate process. If it is asked for the block's value before the computation is done, it makes the requesting process wait until it is done computing. 
A Promise is created by sending #promise to the computation block. The forked process thus created has the same priority as the creating process. To assign a different process priority to the Promise, use #promiseAt:. The main process sends #value to the Promise to wait until the block is done and then get its value. 
When an exception occurs in the forked process, the exception is passed back to the main process, where it is handled normally (displaying a Notifier). 
When the main process wishes to continue in parallel with the forked process, it must avoid sending #value to the Promise until it is certain the value has been computed. To test whether the value has been computed, the main process sends #hasValue to the Promise. In that situation, of course, the main process must ensure that it yields control to the forked process often enough for the value to be computed eventually. 
The Promise class provides three example methods to demonstrate various aspects of a Promise. 