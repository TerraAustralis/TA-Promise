printing
printOn: aStream
  aStream nextPutAll: 'task: #' , self id printString , ' ('.
  self hasValue
    ifTrue: [ aStream nextPutAll: 'hasValue: ' , taskValue printString ]
    ifFalse: [ 
      self hasError
        ifTrue: [ aStream nextPutAll: 'ERROR: ' , self exception description ]
        ifFalse: [ aStream nextPutAll: 'not finished' ] ].
  aStream nextPutAll: ')'