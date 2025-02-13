'From Cuis7.3 [latest update: #6907] on 10 December 2024 at 10:40:43 am'!
'Description '!
!provides: 'Regexp' 1 69!
!requires: 'Unicode' 1 67 nil!
SystemOrganization addCategory: #Regexp!
SystemOrganization addCategory: #'Regexp-Parsing'!
SystemOrganization addCategory: #'Regexp-Private'!
SystemOrganization addCategory: #'Regexp-Public'!
SystemOrganization addCategory: #'Regexp-Tests'!


!classDefinition: #ParseError category: #'Regexp-Parsing'!
Error subclass: #ParseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Parsing'!
!classDefinition: 'ParseError class' category: #'Regexp-Parsing'!
ParseError class
	instanceVariableNames: ''!

!classDefinition: #BaseParser category: #'Regexp-Parsing'!
Object subclass: #BaseParser
	instanceVariableNames: 'input lookahead shift'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Parsing'!
!classDefinition: 'BaseParser class' category: #'Regexp-Parsing'!
BaseParser class
	instanceVariableNames: ''!

!classDefinition: #ReCompiler category: #'Regexp-Private'!
BaseParser subclass: #ReCompiler
	instanceVariableNames: 'flags slotsUsed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCompiler class' category: #'Regexp-Private'!
ReCompiler class
	instanceVariableNames: ''!

!classDefinition: #ReAnchor category: #'Regexp-Private'!
Object subclass: #ReAnchor
	instanceVariableNames: 'predicate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAnchor class' category: #'Regexp-Private'!
ReAnchor class
	instanceVariableNames: ''!

!classDefinition: #ReCharacterClass category: #'Regexp-Private'!
Object subclass: #ReCharacterClass
	instanceVariableNames: 'property'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCharacterClass class' category: #'Regexp-Private'!
ReCharacterClass class
	instanceVariableNames: ''!

!classDefinition: #ReCharacterSet category: #'Regexp-Private'!
ReCharacterClass subclass: #ReCharacterSet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCharacterSet class' category: #'Regexp-Private'!
ReCharacterSet class
	instanceVariableNames: ''!

!classDefinition: #ReBitmapCharacterSet category: #'Regexp-Private'!
ReCharacterSet subclass: #ReBitmapCharacterSet
	instanceVariableNames: 'bitmap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReBitmapCharacterSet class' category: #'Regexp-Private'!
ReBitmapCharacterSet class
	instanceVariableNames: 'blank decimal space word'!

!classDefinition: #ReEnumeratedCharacterSet category: #'Regexp-Private'!
ReCharacterSet subclass: #ReEnumeratedCharacterSet
	instanceVariableNames: 'characters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReEnumeratedCharacterSet class' category: #'Regexp-Private'!
ReEnumeratedCharacterSet class
	instanceVariableNames: ''!

!classDefinition: #ReComplementClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReComplementClass
	instanceVariableNames: 'complement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReComplementClass class' category: #'Regexp-Private'!
ReComplementClass class
	instanceVariableNames: ''!

!classDefinition: #ReDifferenceClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReDifferenceClass
	instanceVariableNames: 'minuend subtrahend'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReDifferenceClass class' category: #'Regexp-Private'!
ReDifferenceClass class
	instanceVariableNames: ''!

!classDefinition: #ReIntersectionClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReIntersectionClass
	instanceVariableNames: 'operand1 operand2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReIntersectionClass class' category: #'Regexp-Private'!
ReIntersectionClass class
	instanceVariableNames: ''!

!classDefinition: #RePropertyClass category: #'Regexp-Private'!
ReCharacterClass subclass: #RePropertyClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'RePropertyClass class' category: #'Regexp-Private'!
RePropertyClass class
	instanceVariableNames: ''!

!classDefinition: #ReUnionClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReUnionClass
	instanceVariableNames: 'operand1 operand2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReUnionClass class' category: #'Regexp-Private'!
ReUnionClass class
	instanceVariableNames: ''!

!classDefinition: #ReFlags category: #'Regexp-Private'!
Object subclass: #ReFlags
	instanceVariableNames: 'ignoreCase multiLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReFlags class' category: #'Regexp-Private'!
ReFlags class
	instanceVariableNames: ''!

!classDefinition: #ReInstruction category: #'Regexp-Private'!
Object subclass: #ReInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReInstruction class' category: #'Regexp-Private'!
ReInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReAnchorInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReAnchorInstruction
	instanceVariableNames: 'anchor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAnchorInstruction class' category: #'Regexp-Private'!
ReAnchorInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReCharacterInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReCharacterInstruction
	instanceVariableNames: 'characterClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCharacterInstruction class' category: #'Regexp-Private'!
ReCharacterInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReJumpInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReJumpInstruction
	instanceVariableNames: 'target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReJumpInstruction class' category: #'Regexp-Private'!
ReJumpInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReBranchInstruction category: #'Regexp-Private'!
ReJumpInstruction subclass: #ReBranchInstruction
	instanceVariableNames: 'target1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReBranchInstruction class' category: #'Regexp-Private'!
ReBranchInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReMatchInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReMatchInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReMatchInstruction class' category: #'Regexp-Private'!
ReMatchInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReSaveInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReSaveInstruction
	instanceVariableNames: 'slot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReSaveInstruction class' category: #'Regexp-Private'!
ReSaveInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReSaveEndInstruction category: #'Regexp-Private'!
ReSaveInstruction subclass: #ReSaveEndInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReSaveEndInstruction class' category: #'Regexp-Private'!
ReSaveEndInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReSaveStartInstruction category: #'Regexp-Private'!
ReSaveInstruction subclass: #ReSaveStartInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReSaveStartInstruction class' category: #'Regexp-Private'!
ReSaveStartInstruction class
	instanceVariableNames: ''!

!classDefinition: #ReLabel category: #'Regexp-Private'!
Object subclass: #ReLabel
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReLabel class' category: #'Regexp-Private'!
ReLabel class
	instanceVariableNames: ''!

!classDefinition: #ReNode category: #'Regexp-Private'!
Object subclass: #ReNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReNode class' category: #'Regexp-Private'!
ReNode class
	instanceVariableNames: ''!

!classDefinition: #ReAnchorNode category: #'Regexp-Private'!
ReNode subclass: #ReAnchorNode
	instanceVariableNames: 'anchor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAnchorNode class' category: #'Regexp-Private'!
ReAnchorNode class
	instanceVariableNames: ''!

!classDefinition: #ReCharacterNode category: #'Regexp-Private'!
ReNode subclass: #ReCharacterNode
	instanceVariableNames: 'characters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCharacterNode class' category: #'Regexp-Private'!
ReCharacterNode class
	instanceVariableNames: ''!

!classDefinition: #ReGroupNode category: #'Regexp-Private'!
ReNode subclass: #ReGroupNode
	instanceVariableNames: 'node slot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReGroupNode class' category: #'Regexp-Private'!
ReGroupNode class
	instanceVariableNames: ''!

!classDefinition: #ReNullNode category: #'Regexp-Private'!
ReNode subclass: #ReNullNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReNullNode class' category: #'Regexp-Private'!
ReNullNode class
	instanceVariableNames: 'instance'!

!classDefinition: #ReRepetitionNode category: #'Regexp-Private'!
ReNode subclass: #ReRepetitionNode
	instanceVariableNames: 'node min max greedy possessive'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReRepetitionNode class' category: #'Regexp-Private'!
ReRepetitionNode class
	instanceVariableNames: ''!

!classDefinition: #ReSequenceNode category: #'Regexp-Private'!
ReNode subclass: #ReSequenceNode
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReSequenceNode class' category: #'Regexp-Private'!
ReSequenceNode class
	instanceVariableNames: ''!

!classDefinition: #ReAlternationNode category: #'Regexp-Private'!
ReSequenceNode subclass: #ReAlternationNode
	instanceVariableNames: 'left right'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAlternationNode class' category: #'Regexp-Private'!
ReAlternationNode class
	instanceVariableNames: ''!

!classDefinition: #ReConcatenationNode category: #'Regexp-Private'!
ReSequenceNode subclass: #ReConcatenationNode
	instanceVariableNames: 'left right'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReConcatenationNode class' category: #'Regexp-Private'!
ReConcatenationNode class
	instanceVariableNames: ''!

!classDefinition: #ReProcess category: #'Regexp-Private'!
Object subclass: #ReProcess
	instanceVariableNames: 'program input character position scheduled running result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReProcess class' category: #'Regexp-Private'!
ReProcess class
	instanceVariableNames: ''!

!classDefinition: #ReProgram category: #'Regexp-Private'!
Object subclass: #ReProgram
	instanceVariableNames: 'slotsNeeded instructions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReProgram class' category: #'Regexp-Private'!
ReProgram class
	instanceVariableNames: ''!

!classDefinition: #ReRegister category: #'Regexp-Private'!
Object subclass: #ReRegister
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReRegister class' category: #'Regexp-Private'!
ReRegister class
	instanceVariableNames: ''!

!classDefinition: #ReThread category: #'Regexp-Private'!
Object subclass: #ReThread
	instanceVariableNames: 'process counter result executed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReThread class' category: #'Regexp-Private'!
ReThread class
	instanceVariableNames: ''!

!classDefinition: #ReMatch category: #'Regexp-Public'!
Object subclass: #ReMatch
	instanceVariableNames: 'pattern string startingAt endingAt register0 registers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'ReMatch class' category: #'Regexp-Public'!
ReMatch class
	instanceVariableNames: ''!

!classDefinition: #RePattern category: #'Regexp-Public'!
Object subclass: #RePattern
	instanceVariableNames: 'program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'RePattern class' category: #'Regexp-Public'!
RePattern class
	instanceVariableNames: 'cache'!

!classDefinition: #RePatternTests category: #'Regexp-Tests'!
TestCase subclass: #RePatternTests
	instanceVariableNames: 'pattern'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Tests'!
!classDefinition: 'RePatternTests class' category: #'Regexp-Tests'!
RePatternTests class
	instanceVariableNames: ''!


!ParseError commentStamp: 'ess 11/19/2024 09:53:48' prior: 0!
I am a class for errors generated by BaseParser.!

!BaseParser commentStamp: 'ess 11/19/2024 10:23:00' prior: 0!
I am a utility for writing recursive-descent parsers.

I have a single-token lookahead, but I also support backtracking.  I differ from Parser in not being specific to Smalltalk.

I am little more than a thin wrapper around a PositionableStream, i.e., my #lookahead equates to a stream's #peek and my #consume equates to a stream's #next.

My main differenece from a stream is my #step method, which supports mapping one or more items from the underlying collection as a single token.  For many uses, this allows you to write parsers without having separate tokenization and parsing stages.  (This is sometimes convenient, and sometimes necessary.)  To do the same using only a stream can require distracting bookkeeping of the stream's underlying position.

To avoid that bookkeeping, I provide the methods #save and #restore to save and restore, respectively, the stream's position.  Saved positions can be nested.  To implement backtracking or multi-token lookahead, use #withSaveDo: to manage all this.

I also provide a number of convenience methods that map directly to tests of the #lookahead token, but check for end-of-input, i.e., #isDigit is equivalent to `lookahead notNil and: [ lookahead isDigit ]`.!

!ReCompiler commentStamp: '<historical>' prior: 0!
https://tc39.es/ecma262/multipage/text-processing.html#sec-regexp-regular-expression-objects

https://perldoc.perl.org/perlre
!

!ReCharacterClass commentStamp: '<historical>' prior: 0!
Match characters by property, where "property" is any test block that can be evaluated against a character.!

!ReEnumeratedCharacterSet commentStamp: '<historical>' prior: 0!
Match characters by the property of being "included in this enumerated set".!

!ReInstruction commentStamp: '<historical>' prior: 0!
An "opcode", of sorts, for the regular expression matching virtual machine.!

!ReAnchorInstruction commentStamp: '<historical>' prior: 0!
Evaluate an anchor condition.  Progress the thread only when the anchor is satisfied.!

!ReCharacterInstruction commentStamp: '<historical>' prior: 0!
Look for a character matching some criteria.  Progress the thread when we find a match.!

!ReNode commentStamp: '<historical>' prior: 0!
A part of the intermediate syntax tree constructed during compilation.!

!ReNullNode commentStamp: '<historical>' prior: 0!
Null object!

!BaseParser methodsFor: 'accessing' stamp: 'ess 11/3/2024 08:41:05'!
input: aStringOrStream

	input := aStringOrStream readStream.
	self step! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:52:49'!
reset: streamPosition

	self restore.
	^nil! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/19/2024 10:17:08'!
restore

	| saved |
	saved := self unsave.
	input position: saved key.
	lookahead := saved value! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:53:02'!
save

	shift addLast: input position -> lookahead.
	^input position! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:53:07'!
shift

	^self save! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:54:07'!
unsave

	shift isEmpty ifTrue: [^self error: 'BaseParser internal error: restore without save'].
	^shift removeLast! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:54:12'!
withResetDo: aBlock

	^self withSaveDo: aBlock! !

!BaseParser methodsFor: 'backtracking' stamp: 'ess 11/27/2024 10:54:42'!
withSaveDo: aUnaryBlock

	| didRestore restore |
	didRestore := false.
	restore :=
		[self restore.
		didRestore := true].
	self save.
	^[aUnaryBlock value: restore] ensure:
		[didRestore ifFalse: [self unsave]]! !

!BaseParser methodsFor: 'initialization' stamp: 'ess 11/1/2024 19:26:09'!
initialize

	shift := OrderedCollection new! !

!BaseParser methodsFor: 'initialization' stamp: 'ess 11/7/2024 15:27:22'!
parseError: aMessageString

	^ ParseError signal: aMessageString! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/18/2024 03:42:10'!
consume
	"Update lookahead to the next character of the input, or nil.  Answer the old value of the lookahead."

	| la |
	la := lookahead ifNil: [ ^ self parseError: 'Unexpected end of input' ].
	self step.
	^ la! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:36:22'!
expect: aCharacter

	(self match: aCharacter) ifFalse:
		[^self parseError: 'Expected ', aCharacter asString]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:36:28'!
expectAll: aSequence

	(self matchAll: aSequence) ifFalse:
		[^self parseError: 'Expected ', aSequence asString]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/14/2024 09:09:30'!
lookahead

	^ lookahead! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:57:26'!
match: aCharacter
	"Consume the next character only if it matches aCharacter.  Answer true if the match succeeded."

	| isMatch |
	isMatch := lookahead == aCharacter.
	isMatch ifTrue: [self consume].
	^isMatch! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:35:18'!
matchAll: aSequence

	^self withSaveDo:
		[:restore | | isMatch |
		isMatch := aSequence
			inject: true
			into: [:sum :each | sum and: [self match: each]].
		isMatch ifFalse: [restore value].
		^isMatch]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:40:53'!
matchAllIgnoringCase: aSequence

	^self withSaveDo:
		[:restore | | isMatch |
		isMatch := aSequence
			inject: true
			into: [:sum :each | sum and: [self matchIgnoringCase: each]].
		isMatch ifFalse: [restore value].
		^isMatch]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/28/2024 09:57:20'!
matchIgnoringCase: aCharacter
	"Consume the next character only if it matches aCharacter.  Answer true if the match succeeded."

	| isMatch |
	isMatch := lookahead asLowercase == aCharacter asLowercase.
	isMatch ifTrue: [self consume].
	^isMatch! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/26/2024 15:43:36'!
next

	^input next! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/2/2024 03:23:33'!
parse

	^ self subclassResponsibility! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/26/2024 07:41:44'!
parse: aStringOrStream

	self input: aStringOrStream.
	^self parse! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/27/2024 10:53:23'!
skipBlanks

	[self isBlank] whileTrue: [self consume]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/27/2024 10:53:36'!
skipSpaces

	[self isSpace] whileTrue: [self consume]! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/18/2024 03:56:43'!
skipWhitespace

	self skipBlanks! !

!BaseParser methodsFor: 'parsing' stamp: 'ess 11/27/2024 10:53:55'!
step
	"Move to next character of input."

	lookahead := input atEnd
		ifFalse: [self next]
		ifTrue: [nil]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/2/2024 05:15:43'!
atEnd

	^ lookahead isNil! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/3/2024 09:04:24'!
didSucceed
	"We succeeded if we parsed all the input."

	^ self atEnd! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:13:23'!
isAlnum

	^ lookahead notNil
		and: [ lookahead isPosixAlnum ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:13:39'!
isAlpha

	^ lookahead notNil
		and: [ lookahead isPosixAlpha ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:15:29'!
isAlphaNumeric

	^ self isAlnum! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:16:01'!
isAscii

	^ lookahead notNil
		and: [ lookahead codePoint <= 127 ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:13:49'!
isBlank

	^ lookahead notNil
		and: [ lookahead isPosixBlank ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:01'!
isCntrl

	^ lookahead notNil
		and: [ lookahead isPosixCntrl ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:12'!
isDigit

	^ lookahead notNil
		and: [ lookahead isPosixDigit ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:22'!
isGraph

	^ lookahead notNil
		and: [ lookahead isPosixGraph ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:16:26'!
isHexDigit

	^ self isXDigit! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:16:46'!
isLetter

	^ self isAlpha! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:31'!
isLower

	^ lookahead notNil
		and: [ lookahead isPosixLower ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:40'!
isPrint

	^ lookahead notNil
		and: [ lookahead isPosixPrint ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:49'!
isPunct

	^ lookahead notNil
		and: [ lookahead isPosixPunct ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:14:58'!
isSpace

	^ lookahead notNil
		and: [ lookahead isPosixSpace ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:15:09'!
isUpper

	^ lookahead notNil
		and: [ lookahead isPosixUpper ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:22:42'!
isWord

	^ lookahead notNil
		and: [ lookahead isPosixWord ]! !

!BaseParser methodsFor: 'testing' stamp: 'ess 11/17/2024 19:17:04'!
isXDigit

	^ lookahead notNil
		and: [ lookahead isPosixXDigit ]! !

!BaseParser methodsFor: 'private' stamp: 'ess 11/18/2024 03:42:20'!
consumeDigit

	self isDigit ifFalse: [ ^ self parseError: 'Expected decimal digit' ].
	^ self consume xDigitValue! !

!BaseParser methodsFor: 'private' stamp: 'ess 11/18/2024 03:42:25'!
consumeXDigit

	self isXDigit ifFalse: [ ^ self parseError: 'Expected hexadecimal digit' ].
	^ self consume xDigitValue! !

!BaseParser methodsFor: 'private' stamp: 'ess 11/18/2024 03:53:57'!
readInteger

	^ self readDigits! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:55:49'!
readDigits

	| result |
	self isDigit ifFalse: [ ^ ParseError signal: 'Expected decimal number' ].
	result := 0.
	[ self isDigit ]
		whileTrue: [ result := result * 10 + self consumeDigit ].
	^ result! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:50:20'!
readDigits: expectedCount

	^ self
		readDigitsFrom: expectedCount
		to: expectedCount! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:58:08'!
readDigitsFrom: minCount to: maxCount

	| result count |
	result := 0.
	count := 0.
	[ count < maxCount and: [ self isDigit ] ]
		whileTrue:
			[ result := result * 10 + self consumeDigit.
			count := count + 1 ].
	count < minCount
		ifTrue: [ ^ self parseError: 'Expected decimal number' ].
	^ result! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:50:08'!
readHexDigits: expectedCount

	^ self
		readXDigitsFrom: expectedCount
		to: expectedCount! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:49:24'!
readHexDigitsFrom: minCount to: maxCount

	^ self
		readXDigitsFrom: minCount
		to: maxCount! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:56:06'!
readXDigits

	| result |
	self isXDigit ifFalse: [ ^ ParseError signal: 'Expected hexadecimal number' ].
	result := 0.
	[ self isXDigit ]
		whileTrue: [ result := result * 16 + self consumeXDigit ].
	^ result! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:49:51'!
readXDigits: expectedCount

	^ self
		readXDigitsFrom: expectedCount
		to: expectedCount! !

!BaseParser methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 03:58:21'!
readXDigitsFrom: minCount to: maxCount

	| result count |
	result := 0.
	count := 0.
	[ count < maxCount and: [ self isXDigit ] ]
		whileTrue:
			[ result := result * 16 + self consumeXDigit.
			count := count + 1 ].
	count < minCount
		ifTrue: [ ^ self parseError: 'Expected hexadecimal number' ].
	^ result! !

!BaseParser class methodsFor: 'parsing' stamp: 'ess 11/26/2024 07:41:34'!
parse: aStringOrStream

	^self new parse: aStringOrStream! !

!ReCompiler methodsFor: 'accessing' stamp: 'ess 11/6/2024 12:54:13'!
nextSlot

	| result |
	
	result := slotsUsed.
	slotsUsed := slotsUsed + 1.
	^ result! !

!ReCompiler methodsFor: 'initialization' stamp: 'ess 11/17/2024 13:51:16'!
initialize

	super initialize.
	ignoreCase := false.
	multiLine := false.
	slotsUsed := 0! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 11/16/2024 08:17:38'!
compile: aStringOrStream

	| node |
	
	node := self parse: aStringOrStream.
	^ RePattern
		compileNode: node
		slotsNeeded: slotsUsed! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 11/16/2024 09:47:52'!
parse

	| slot node |
	
	slot := self nextSlot.
	node := self readExpression.
	^ ReGroupNode
		with: node
		slot: slot! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 04:33:43'!
readCharacter

	| character |

	self skipSpaces.
	(self match: $()
		ifTrue: [ ^ self readGroup ].

	character := self consume.
	character = $\
		ifTrue: [ ^ self readCharacterEscape ].
	character = $$ ifTrue: [ ^ ReAnchorNode endOfLine ].
	character = $. ifTrue: [ ^ ReCharacterNode wildcard ].
	character = $[ ifTrue: [ ^ self readCharacterClass ].
	character = $^ ifTrue: [ ^ ReAnchorNode beginningOfLine ].
	^ ReCharacterNode character: character! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 11/21/2024 07:09:27'!
readCharacterEscape

	| escape |

	"\0 \a \e \f \n \r \t \v"
	escape := self characterEscapes
					at: lookahead
					ifAbsent: [ nil ].
	escape ifNotNil: [ ^ ReCharacterNode character: escape ].

	"\A \B \Z \b"
	escape := self anchorEscapes
					at: lookahead
					ifAbsent: [ nil ].
	escape ifNotNil: [ ^ escape value ].

	"\D \S \W \d \s \w"
	(ReCharacterClass
		namedClass: lookahead
		flags: flags)
			ifNotNil: [ :namedClass |
					self consume.
					^ ReCharacterNode class: namedClass ].

	"\cX control character"
	(self match: $c)
		ifTrue: [ | control character |
				control := self consume codePoint \\ 32.
				character := Character codePoint: control.
				^ ReCharacterNode character: character ].
			
	"\p{ unicode property name or value}"
	((lookahead == $P)  or: [ lookahead = $p ])
		ifTrue: [ | p class |
				p := self consume.
				(self match: ${)
					ifFalse: [ ^ ReCharacterNode character: p ].
				class := self readPropertyEscape.
				p == $P ifTrue: [ class := class complement ].
				^ ReCharacterNode characterClass: class ].

	"\uXXXX or \u{X[1-6]} unicode escape"
	(self match: $u)
		ifTrue: [ ^ ReCharacterNode character: self readUnicodeEscape ].
			
	"\xXX \x{X[1-2]} hexadecimal escape"
	(self match: $x)
		ifTrue: [ ^ ReCharacterNode character: self readHexEscape ].

	"Handles \\ along with unnecessary escapes"
	^ ReCharacterNode character: self consume! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 04:36:40'!
readHexEscape

	| codepoint |
	(self match: ${)
		ifFalse: [ codepoint := self readXDigits: 2 ]
		ifTrue: [ codepoint := self readXDigitsFrom: 1 to: 2.
				self expect: $} ].
	^ Character codePoint: codepoint! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 12/6/2024 16:03:43'!
readPropertyEscape

	| name |
	name := self readWord.
	name isEmptyOrNil ifTrue: [^ self parseError: 'Expected Unicode property name or value'].
	self skipWhitespace.
	self expect: $}.
	^ReCharacterClass
		unicodeProperty: name
		flags: flags! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 04:38:01'!
readUnicodeEscape

	| codepoint |
	(self match: ${)
		ifFalse: [ codepoint := self readXDigits: 4 ]
		ifTrue: [ 	codepoint := self readXDigitsFrom: 1 to: 6.
				self expect: $} ].
	^ Character codePoint: codepoint! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 11/18/2024 04:39:37'!
readWord

	self skipSpaces.
	^ String streamContents:
		[ :out |
		[ self isWord ]
			whileTrue: [ out nextPut: self consume ] ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:46:16'!
readCharacterClass

	^ ReCharacterNode class: self readClassExpression! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 16:08:30'!
readClassCharacter

	| character1 character2 |
	
	character1 := self consume.
	self skipWhitespace.
	character1 == $- ifTrue: [ ^ ReCharacterSet character: $- ].
	character1 == $\ ifTrue: [ character1 := self readClassEscape ].
	character1 isCharacter ifFalse: [ ^ character1 ].
	self skipWhitespace.
	lookahead == $-
		ifFalse: [ ^ character1 ].
	self withResetDo:
			[ :reset |
			self consume.
			lookahead == $-
				ifTrue: [ reset value.
						^ ReCharacterSet character: character1 ].
			character2 := self readClassCharacter.
			character2 isCharacter
				ifFalse: [ reset value.
						^ ReCharacterSet character: character1 ].
			^ ReCharacterClass
				from: character1
				to: character2 ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/21/2024 07:10:38'!
readClassEscape

	| escape |

	"\0 \a \e \f \n \r \t \v"
	escape := self characterEscapes
					at: lookahead
					ifAbsent: [ nil ].
	escape ifNotNil: [ ^ escape ].

	"\D \S \W \d \s \w"
	(ReCharacterClass
		namedClass: lookahead
		flags: flags)
			ifNotNil: [ :namedClass |
					self consume.
					^ namedClass ].

	"\cX control character"
	(self match: $c)
		ifTrue: [ | control |
				control := self consume codePoint \\ 32.
				^ Character codePoint: control ].

	"\p{ unicode property name or value}"
	((lookahead == $P)  or: [ lookahead = $p ])
		ifTrue: [ | p class |
				p := self consume.
				(self match: ${)
					ifFalse: [ ^ p ].
				class := self readPropertyEscape.
				p == $P ifTrue: [ class := class complement ].
				^ class ].

	"\uXXXX or \u{X[1-6]} unicode escape"
	(self match: $u)
		ifTrue: [ ^ self readUnicodeEscape ].
			
	"\xXX \x{X[1-2]} hexadecimal escape"
	(self match: $x)
		ifTrue: [ ^ self readHexEscape ].

	"Handles \\ along with unnecessary escapes"
	^ self consume! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:46:40'!
readClassExpression

	| isComplement class |

	self skipWhitespace.
	isComplement := self match: $^.
	class := self readClassSubtraction.
	self skipWhitespace.
	self expect: $].
	^ isComplement
		ifTrue: [ class complement ]
		ifFalse: [ class ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:50:27'!
readClassIntersection

	| result |

	result := self readClassUnion.
	self skipWhitespace.
	[ self match: $$ ]
		whileTrue:
			[ | operand |
			self expect: $$.
			operand := self readClassUnion.
			result := result & operand.
			self skipWhitespace ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 12:18:49'!
readClassName

	self isLetter ifFalse: [ ^ ParseError signal: 'Expected character class' ].

	^ String streamContents:
		[ :out |
		[ self isLetter ]
			whileTrue: [ out nextPut: self consume ] ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:49:57'!
readClassSubtraction

	| result |

	result := self readClassIntersection.
	self skipWhitespace.
	[ self match: $- ]
		whileTrue:
			[ | operand |
			self expect: $-.
			operand := self readClassIntersection.
			result := result - operand.
			self skipWhitespace ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:57:39'!
readClassUnion

	| result done |

	result := ReCharacterClass empty.
	done := false.
	self skipWhitespace.
	[ done or: [ lookahead == $] ] ]
		whileFalse:
			[ | operand |
			done := (self matchAll: '&&') or: [ self matchAll: '--' ].
			done ifFalse:
				[ (self match: $[)
					ifTrue: [ operand := self readNestedClass ]
					ifFalse: [ operand := self readClassCharacter ].
				result := result | operand.
				self skipWhitespace ] ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:51:19'!
readNestedClass

	self skipWhitespace.
	^ (self match: $:)
		ifTrue: [ ^ self readPosixClass ]
		ifFalse: [ ^ self readClassExpression ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 11/17/2024 15:13:16'!
readPosixClass

	| name |
	
	self skipWhitespace.
	name := self readClassName.
	self skipWhitespace.
	self expect: $:.
	self skipWhitespace.
	self expect: $].
	^ ReCharacterClass posixClass: name! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 07:28:54'!
readAlternatives

	| result |
	
	result := self readConcatenation.
	self skipWhitespace.
	[ self match: $| ]
		whileTrue:
			[ result := result or: self readConcatenation.
			self skipWhitespace ].
			
	^ result! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 07:28:41'!
readConcatenation

	| result |
	
	result := self readRepetition..
	self skipWhitespace.
	[ lookahead notNil and: [ ('|)' includes: lookahead) not ] ]
		whileTrue:
			[ result := result and: self readRepetition.
			self skipWhitespace ].
			
	^ result! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/6/2024 06:07:21'!
readExpression

	^ self readAlternatives! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 08:36:10'!
readGroup

	| capturing slot node |

	capturing := true.
	(self match: $?)
		ifTrue: [ (self match: $# )
					ifTrue: [ self skipBlockComment.
							^ ReNullNode new ].
				(self match: $: )
					ifTrue: [ capturing := false ] ].

	capturing ifTrue: [ slot := self nextSlot ].
	node := self readExpression.
	self expect: $).
	^ ReGroupNode
		with: node
		slot: slot! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/16/2024 09:48:59'!
readRepetition

	| node |

	node := self readCharacter.
	(node isKindOf: ReAnchorNode) ifTrue: [ ^ node ].
	('*+?{' includes: lookahead)
		ifTrue:
			[ | char |
			char := self consume.
			char = $*
				ifTrue: [ node := node repeatMin: 0 ].
			char = $+
				ifTrue: [ node := node repeatMin: 1 ].
			char = $?
				ifTrue: [ node := node
								repeatMin: 0
								max: 1 ].
			char = ${
				ifTrue: [ | repeat |
						repeat := self readRepetitionCount.
						repeat node: node.
						node := repeat ].
			(self match: $+)
				ifTrue: [ node bePossessive ].
			(self match: $?)
				ifTrue: [ node beNotGreedy ] ].
	^ node! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/16/2024 09:47:43'!
readRepetitionCount

	| min max |
	
	min := nil.
	max := nil.
	
	self isDigit ifTrue: [ min := self readInteger ].
	(self match: $})  "{n}"
		ifTrue: [ min ifNil: [ self parseError: 'Expected repetition count' ].  "Exclude {}"
				^ ReRepetitionNode
					min: min
					max: min ].

	"{n,m} or {,m}"
	min := min ifNil: [ 0 ].
	self expect: $,.
	self isDigit ifTrue: [ max := self readInteger ].
	self expect: $}.
	^ ReRepetitionNode
		min: min
		max: max! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 08:51:29'!
skipBlockComment

	| done |
	done := false.
	[ done or: [ lookahead isNil ] ]
		whileFalse:
			[ (self match: $))
				ifTrue: [ done := true ]
				ifFalse:
					[ (self match: $\)
						ifTrue: [ self consume ]
						ifFalse:
							[ (self matchAll: '(?#')
								ifFalse: [ self consume ]
								ifTrue: [ self skipBlockComment ] ] ] ].
	^ ReNullNode new! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 07:35:47'!
skipLineComment

	[ `{ nil . Character lf . Character cr }` statePointsTo: lookahead ]
		whileFalse: [ self consume ].
	self match: `Character cr`.
	self match: `Character lf`! !

!ReCompiler methodsFor: 'private' stamp: 'ess 11/17/2024 08:27:52'!
skipWhitespace

	[ lookahead == $# or: [ self isSpace ] ]
		whileTrue: [ (self match: $#)
						ifTrue: [ self skipLineComment ].
					super skipWhitespace ]! !

!ReCompiler methodsFor: 'constants' stamp: 'ess 11/18/2024 04:30:24'!
anchorEscapes

	^ `{
		$A -> [ ReAnchorNode start ] .
		$B -> [ ReAnchorNode notWordBoundary ] .
		$Z -> [ ReAnchorNode end ] .
		$b -> [ ReAnchorNode wordBoundary ] .
	} asDictionary`! !

!ReCompiler methodsFor: 'constants' stamp: 'ess 11/18/2024 04:33:05'!
characterEscapes

	^ `{
		$0 -> (Character codePoint: 0) .  "NUL"
		$a -> (Character codePoint: 7)  .  "BEL (alarm)"
		$e -> (Character codePoint: 27) .  "ESC"
		$f -> (Character codePoint: 12) .  "FF"
		$n -> (Character codePoint: 10) .  "LF"
		$r -> (Character codePoint: 13) .  "CR"
		$t -> (Character codePoint: 9) .  "TAB"
		$v -> (Character codePoint: 11)  "VT"
	} asDictionary`! !

!ReAnchor methodsFor: 'evaluating' stamp: 'ess 11/9/2024 13:01:54'!
value: aThread

	^ predicate value: aThread! !

!ReAnchor methodsFor: 'private' stamp: 'ess 11/9/2024 13:01:31'!
setPredicate: aUnaryBlock

	predicate := aUnaryBlock.
	^ self! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:26:44'!
beginningOfLine

	^ self predicate: [ :aThread | self isStart: aThread ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:03:22'!
end

	^ self predicate: [ :aThread | self isEnd: aThread ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:26:36'!
endOfLine

	^ self predicate: [ :aThread | self isEnd: aThread ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:03:32'!
notWordBoundary

	^ self predicate: [ :aThread | self notWordBoundary: aThread ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:02:19'!
predicate: aUnaryBlock
	"Answer an instance that anchors the match to the given predicate."
	
	^ self new
		setPredicate: aUnaryBlock! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:03:40'!
start

	^ self predicate: [ :aThread | self isStart: aThread ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:03:48'!
wordBoundary

	^ self predicate: [ :aThread | self isWordBoundary: aThread ]! !

!ReAnchor class methodsFor: 'private-testing' stamp: 'ess 11/9/2024 13:02:26'!
isEnd: aThread
	"Are we looking at the end of the string."
	
	^ aThread position = aThread size! !

!ReAnchor class methodsFor: 'private-testing' stamp: 'ess 11/9/2024 13:02:32'!
isStart: aThread
	"Are we looking at the start of the string."
	
	^ aThread position = 0! !

!ReAnchor class methodsFor: 'private-testing' stamp: 'ess 11/9/2024 13:02:37'!
isWordBoundary: aThread

	"The negative test is easier to express."
	^ (self notWordBoundary: aThread) not! !

!ReAnchor class methodsFor: 'private-testing' stamp: 'ess 11/16/2024 09:50:56'!
notWordBoundary: aThread
	"True if the last character matched and the next character to match either are both word characters or both not word characters."
	
	| previous next wordClass |
	
	aThread position = 0 ifTrue: [ ^ false ].  "No previous character"
	aThread position = aThread size ifTrue: [ ^ false ].  "No next character"
	
	previous := aThread at: aThread position.
	next := aThread at: aThread position + 1.
	
	wordClass := ReCharacterClass word.
	^ (wordClass includes: previous) = (wordClass includes: next)! !

!ReCharacterClass methodsFor: 'converting' stamp: 'ess 11/16/2024 09:50:38'!
complement

	^ ReComplementClass complement: self! !

!ReCharacterClass methodsFor: 'converting' stamp: 'ess 11/21/2024 07:54:47'!
not

	^ self complement! !

!ReCharacterClass methodsFor: 'testing' stamp: 'ess 11/21/2024 07:55:32'!
includes: aCharacter

	^ self subclassResponsibility! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:54:09'!
& anotherClass

	^ ReIntersectionClass
		intersection: self
		and: anotherClass! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:54:36'!
- anotherClass

	^ ReDifferenceClass
		minuend: self
		subtrahend: anotherClass! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:53:55'!
| anotherClass

	^ ReUnionClass
		union: self
		and: anotherClass! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:42:27'!
character: aCharacter

	^ReEnumeratedCharacterSet character: aCharacter! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:42:37'!
codepoint: aCodepoint

	^ReEnumeratedCharacterSet codepoint: aCodepoint! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:38:35'!
decimal: regexpFlags
	"`\d` Matches any decimal digit (not just [0-9])."

	^ReBitmapCharacterSet decimal: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:39:00'!
horizontalWhitespace: regexpFlags
	"`\h` Matches any horizontal whitespace, i.e., space separators and horizontal tab."

	^ReBitmapCharacterSet horizontalWhitespace: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:50:49'!
namedClass: aCharacter flags: regexpFlags

	aCharacter == $d ifTrue: [^self decimal: regexpFlags].
	aCharacter == $h ifTrue: [^self horizontalWhitespace: regexpFlags].
	aCharacter == $s ifTrue: [^self space: regexpFlags].
	aCharacter == $v ifTrue: [^self verticalWhitespace: regexpFlags].
	aCharacter == $w ifTrue: [^self word: regexpFlags].

	aCharacter == $D ifTrue: [^(self decimal: regexpFlags) complement].
	aCharacter == $H ifTrue: [^(self horizontalWhitespace: regexpFlags) complement].
	aCharacter == $S ifTrue: [^(self space: regexpFlags) complement].
	aCharacter == $V ifTrue: [^(self verticalWhitespace: regexpFlags) complement].
	aCharacter == $W ifTrue: [^(self word: regexpFlags) complement].

	^nil! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:50:10'!
posixClass: className flags: regexpFlags

	^RePropertyClass
		posixClass: className
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:43:08'!
satisfies: propertyBlock

	^RePropertyClass satisfies: propertyBlock! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:35:57'!
space: regexpFlags
	"`\s` Matches any whitespace or line terminator character."

	^ReBitmapCharacterSet space: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:43:25'!
unicodeProperty: propertyName equalTo: propertyValue flags: regexpFlags

	^ReBitmapCharacterSet
		unicodeProperty: propertyName
		equalTo: propertyValue
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:43:38'!
unicodeProperty: propertyName flags: regexpFlags

	^ReBitmapCharacterSet
		unicodeProperty: propertyName
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:37:51'!
verticalWhitespace: regexpFlags
	"`\v` Matches any vertical whitespace."

	^ReBitmapCharacterSet verticalWhitespace: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:00:16'!
wildcard: regexpFlags
	"Matches any character except LF in multi-line mode, but matches any character *including* LF in single-line mode."

	^RePropertyClass wildcard: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:39:34'!
word: regexpFlags
	"`\w` Matches any word character: alphanumeric, connector punctuation, or marks."

	^ReBitmapCharacterSet word: regexpFlags! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:16:08'!
& anotherClass

	self species == anotherClass species
		ifTrue: [^self species bitmap: bitmap & anotherClass bitmap].
	^super & anotherClass! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:16:25'!
- anotherClass

	self species == anotherClass species
		ifTrue: [^self species bitmap: bitmap - anotherClass bitmap].
	^super - anotherClass! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:16:37'!
| anotherClass

	self species == anotherClass species
		ifTrue: [^self species bitmap: bitmap | anotherClass bitmap].
	^super | anotherClass! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:16:55'!
bitmap

	^bitmap! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:17:00'!
includes: aCharacter

	^bitmap includes: aCharacter codePoint! !

!ReBitmapCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:17:05'!
setBitmap: aBitmap

	bitmap := aBitmap.
	^self! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 15:29:39'!
bitmap: aBitmap

	^self new setBitmap: aBitmap! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:14:01'!
blank
	"Space separators along with good ol' horizontal tab (which is classified as a control character)."
	
	blank ifNil:
		[blank := Unicode generalCategory: #Space_Separator.
		blank add: Character tab codePoint].
	^blank! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:06:43'!
decimal: regexpFlags
	"`\d` Matches any decimal digit.

	This is not just [0-9], but also the equivalent in every writing system.  As of Unicode 16.0, there are 76 variations on this theme, totaling 760 characters.  Note that this does not include all numbers, or even all digits, only those used in a decimal radix system."
	
	^decimal ifNil:
		[decimal := self bitmap: (Unicode generalCategory: #Decimal_Number)]! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:14:33'!
horizontalWhitespace: regexpFlags
	"`\h` Matches any horizontal whitespace."
	
	^self bitmap: self blank! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:07:23'!
space: regexpFlags
	"`\s` Matches any whitespace or line terminator character.

	This is the union of all characters in the `Space_Separator` category and all characters having the `White_Space` property.  This includes various line terminators and paragraph separators but excludes ZERO WIDTH NO-BREAK SPACE."
	
	^space ifNil:
		[| spaceSeparator whiteSpace |
		spaceSeparator := Unicode generalCategory: #Space_Separator.
		whiteSpace := Unicode property: #White_Space.	
		space := self bitmap: spaceSeparator | whiteSpace]! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 15:44:53'!
unicodeProperty: propertyName equalTo: propertyValue flags: regexpFlags
! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 16:08:14'!
unicodeProperty: propertyName flags: regexpFlags

	^self bitmap: (Unicode generalCategory: propertyName)! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:15:27'!
verticalWhitespace: regexpFlags
	"`\v` Matches any vertical whitespace."

	^self bitmap: (Unicode property: #White_Space) - self blank! !

!ReBitmapCharacterSet class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:08:38'!
word: regexpFlags
	"`\w` Matches any 'word' character.

	Here, a word character is alphanumeric, connector punctuation (e.g., '_'), or a mark."

	^word ifNil:
		[| letter number connector mark |
		letter := Unicode generalCategory: #Letter.
		number := Unicode generalCategory: #Number.
		connector := Unicode generalCategory: #Connector_Punctuation.
		mark := Unicode generalCategory: #Mark.
		word := self bitmap: letter | number | connector | mark]! !

!ReEnumeratedCharacterSet methodsFor: 'private' stamp: 'ess 11/9/2024 07:16:46'!
setCharacter: aCharacter

	characters := Set with: aCharacter.
	^ self! !

!ReEnumeratedCharacterSet methodsFor: 'initialization' stamp: 'ess 11/9/2024 08:53:09'!
initialize

	characters := Set new! !

!ReEnumeratedCharacterSet methodsFor: 'testing' stamp: 'ess 11/17/2024 12:25:57'!
includes: aCharacter

	^ characters includes: aCharacter! !

!ReEnumeratedCharacterSet methodsFor: 'testing' stamp: 'ess 11/9/2024 08:54:54'!
isEmpty

	^ characters isEmpty! !

!ReEnumeratedCharacterSet methodsFor: 'testing' stamp: 'ess 11/9/2024 08:55:00'!
notEmpty

	^ characters notEmpty! !

!ReEnumeratedCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 11/9/2024 09:03:45'!
add: aCharacterOrCollection

	aCharacterOrCollection isCharacter
		ifTrue: [ characters add: aCharacterOrCollection ]
		ifFalse: [ characters addAll: aCharacterOrCollection ]! !

!ReEnumeratedCharacterSet methodsFor: 'as yet unclassified' stamp: 'ess 11/9/2024 09:02:49'!
addCharacter: aCharacter

	characters add: aCharacter! !

!ReEnumeratedCharacterSet class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:02:22'!
character: aCharacter

	^self new setCharacter: aCharacter! !

!ReEnumeratedCharacterSet class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:02:27'!
codepoint: aCodepoint

	^self character: (Character codePoint: aCodepoint)! !

!ReEnumeratedCharacterSet class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:02:32'!
empty

	^self new! !

!ReComplementClass methodsFor: 'converting' stamp: 'ess 11/9/2024 08:05:22'!
complement

	^ complement! !

!ReComplementClass methodsFor: 'testing' stamp: 'ess 11/9/2024 08:05:47'!
includes: aCharacter

	^ (complement includes: aCharacter) not! !

!ReComplementClass methodsFor: 'private' stamp: 'ess 11/9/2024 08:07:40'!
setComplement: aCharacterClass

	complement := aCharacterClass.
	^ self! !

!ReComplementClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:02:44'!
complement: aCharacterClass

	^self new setComplement: aCharacterClass! !

!ReDifferenceClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:46:33'!
includes: aCharacter

	^ (minuend includes: aCharacter)
		and: [ (subtrahend includes: aCharacter) not ]! !

!ReDifferenceClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:47:29'!
setMinuend: firstClass subtrahend: secondClass

	minuend := firstClass.
	subtrahend := secondClass.
	^ self! !

!ReDifferenceClass class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 16:02:50'!
minuend: firstClass subtrahend: secondClass

	^self new
		setMinuend: firstClass
		subtrahend: secondClass! !

!ReIntersectionClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:49:59'!
includes: aCharacter

	^ (operand1 includes: aCharacter)
		and: [ operand2 includes: aCharacter ]! !

!ReIntersectionClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:50:30'!
setOperands: op1 and: op2

	operand1 := op1.
	operand2 := op2.
	^ self! !

!ReIntersectionClass class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 16:02:56'!
intersection: op1 and: op2

	^self new
		setOperands: op1
		and: op2! !

!RePropertyClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:55:21'!
includes: aCharacter

	^ property value: aCharacter! !

!RePropertyClass methodsFor: 'private' stamp: 'ess 11/21/2024 07:55:55'!
setProperty: aUnaryBlock

	property := aUnaryBlock.
	^ self! !

!RePropertyClass class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 15:46:32'!
satisfies: propertyBlock

	^self new setProperty: propertyBlock! !

!RePropertyClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:48:23'!
posixClass: className flags: regexpFlags

	| predicate |
	predicate := self posixClasses
		at: className
		ifAbsent: [^nil].
	^self satisfies: predicate! !

!RePropertyClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:47:45'!
posixClasses

	^`{	'alnum' -> #isPosixAlnum.
		'alpha' -> #isPosixAlpha.
		'blank' -> #isPosixBlank.
		'cntrl' -> #isPosixCntrl.
		'digit' -> #isPosixDigit.
		'graph' -> #isPosixGraph.
		'lower' -> #isPosixLower.
		'print' -> #isPosixPrint.
		'punct' -> #isPosixPunct.
		'space' -> #isPosixSpace.
		'upper' -> #isPosixUpper.
		'xdigit' -> #isPosixXDigit } asDictionary`! !

!RePropertyClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 16:00:03'!
wildcard: regexpFlags
	"Matches any character except LF in multi-line mode, but matches any character *including* LF in single-line mode."

	regexpFlags multiLine ifFalse: [^self satisfies: #isCharacter].
	^self satisfies: [:c | c ~~ Character lf]! !

!RePropertyClass class methodsFor: 'instance creation' stamp: 'ess 12/6/2024 15:49:19'!
word: regexpFlags

	^self satisfies: #isPosixWord! !

!ReUnionClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:51:31'!
includes: aCharacter

	^ (operand1 includes: aCharacter)
		or: [ operand2 includes: aCharacter ]! !

!ReUnionClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:51:23'!
setOperands: op1 and: op2

	operand1 := op1.
	operand2 := op2.
	^ self! !

!ReUnionClass class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 16:03:07'!
union: op1 and: op2

	^self new
		setOperands: op1
		and: op2! !

!ReFlags methodsFor: 'initialization' stamp: 'ess 11/21/2024 07:08:32'!
initialize

	ignoreCase := false.
	multiLine := false! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 12/6/2024 15:53:46'!
ignoreCase

	^ignoreCase! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 12/6/2024 15:53:56'!
ignoreCase: aBoolean

	ignoreCase := aBoolean! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 12/6/2024 15:54:03'!
multiLine

	^multiLine! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 12/6/2024 15:54:12'!
multiLine: aBoolean

	multiLine := aBoolean! !

!ReInstruction methodsFor: 'evaluating' stamp: 'ess 11/9/2024 11:20:51'!
execute: aThread
	"Override to do something.  Default is no-op."! !

!ReInstruction methodsFor: 'testing' stamp: 'ess 11/9/2024 18:48:36'!
waitsForNextCharacter
	"Does this instruction need a character from the input in order to proceed?

	Most instructions can run immediately, as soon as they are fetched, because their behavior is independent of the character being matched.  These instructions run 'in between' the characters.  The character matching instructions are an obvious exception.
	The main loop of the VM begins each iteration by executing a waiting character match instructuction.  If the match succeeds, the VM then goes on to execute everything it can until it hits an instruction that needs to test the next character."

	^ false! !

!ReAnchorInstruction methodsFor: 'evaluating' stamp: 'ess 11/9/2024 13:08:02'!
execute: aThread
	"Progress aThread only when the anchor condition is satisfied."

	(anchor value: aThread)
		ifTrue: [ aThread step ]! !

!ReAnchorInstruction methodsFor: 'private' stamp: 'ess 11/9/2024 13:08:22'!
setAnchor: anAnchor

	anchor := anAnchor.
	^ self! !

!ReAnchorInstruction class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:08:46'!
anchor: anAnchor

	^ self new
		setAnchor: anAnchor! !

!ReCharacterInstruction methodsFor: 'evaluating' stamp: 'ess 11/9/2024 11:26:30'!
execute: aThread
	"Progress aThread when we match the current character.  Otherwise we let the thread die."

	(characterClass includes: aThread character)
		ifTrue: [ aThread step ]! !

!ReCharacterInstruction methodsFor: 'testing' stamp: 'ess 11/9/2024 18:50:11'!
waitsForNextCharacter
	"Don't execute in prefetch.  This instruction needs to evaluate the next character of the input in order to proceed."

	^ true! !

!ReCharacterInstruction methodsFor: 'private' stamp: 'ess 11/9/2024 11:25:27'!
setClass: aCharacterClass

	characterClass := aCharacterClass.
	^ self! !

!ReCharacterInstruction class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 11:25:07'!
class: aCharacterClass
	"Answer an instance that progresses when the current character matches aCharacterClass."

	^ self new
		setClass: aCharacterClass! !

!ReJumpInstruction methodsFor: 'evaluating' stamp: 'ess 11/7/2024 07:57:27'!
execute: aThread

	aThread jump: target! !

!ReJumpInstruction methodsFor: 'private' stamp: 'ess 11/7/2024 05:39:27'!
setJump: aTarget

	target := aTarget.
	^ self! !

!ReJumpInstruction class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 10:27:48'!
jump: jumpTarget

	^ self new
		setJump: jumpTarget! !

!ReBranchInstruction methodsFor: 'evaluating' stamp: 'ess 11/7/2024 07:57:54'!
execute: aThread

	aThread
		jump: target
		andBranch: target1! !

!ReBranchInstruction methodsFor: 'private' stamp: 'ess 11/7/2024 05:40:03'!
setJump: priorityTarget branch: secondaryTarget

	target := priorityTarget.
	target1 := secondaryTarget.
	^ self! !

!ReBranchInstruction class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 10:23:55'!
jump: priorityTarget andBranch: secondaryTarget

	^ self new
		setJump: priorityTarget
		branch: secondaryTarget! !

!ReMatchInstruction methodsFor: 'evaluating' stamp: 'ess 11/7/2024 07:58:05'!
execute: aThread

	aThread match! !

!ReSaveInstruction methodsFor: 'private' stamp: 'ess 11/6/2024 12:24:04'!
setSlot: aSlotIndex

	slot := aSlotIndex.
	^ self! !

!ReSaveInstruction class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:49:25'!
end: aSlotIndex

	^ ReSaveEndInstruction new
		setSlot: aSlotIndex! !

!ReSaveInstruction class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:49:19'!
start: aSlotIndex

	^ ReSaveStartInstruction new
		setSlot: aSlotIndex! !

!ReSaveEndInstruction methodsFor: 'as yet unclassified' stamp: 'ess 11/7/2024 07:58:21'!
execute: aThread

	aThread
		saveEnd: slot;
		step! !

!ReSaveStartInstruction methodsFor: 'as yet unclassified' stamp: 'ess 11/7/2024 07:58:37'!
execute: aThread

	aThread
		saveStart: slot;
		step! !

!ReLabel methodsFor: 'accessing' stamp: 'ess 11/6/2024 06:50:31'!
counter

	^ counter! !

!ReLabel methodsFor: 'accessing' stamp: 'ess 11/6/2024 06:50:55'!
counter: aLocation

	counter := aLocation! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:47:22'!
and: aNode
	"Concatenate aNode in sequence"

	^ ReConcatenationNode
		with: self
		with: aNode! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/9/2024 11:58:00'!
compileTo: aProgram
	"Generate the instructions needed for this node's responsibilities."

	self subclassResponsibility! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:11'!
newLabel

	^ ReLabel new! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:47:31'!
or: aNode
	"Alternate with aNode"

	^ ReAlternationNode
		with: self
		with: aNode! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 06:15:01'!
repeatMin: minMatches

	^ self
		repeatMin: minMatches
		max: nil! !

!ReNode methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:47:43'!
repeatMin: minMatches max: maxMatches

	^ ReRepetitionNode
		with: self
		min: minMatches
		max: maxMatches! !

!ReAnchorNode methodsFor: 'evaluating' stamp: 'ess 11/9/2024 13:07:09'!
compileTo: aProgram

	aProgram anchor: anchor! !

!ReAnchorNode methodsFor: 'private' stamp: 'ess 11/9/2024 13:06:29'!
setAnchor: anAnchor

	anchor := anAnchor.
	^ self! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:05:15'!
anchor: anAnchor

	^ self new
		setAnchor: anAnchor! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:27:25'!
beginningOfLine

	^ self anchor: ReAnchor beginningOfLine! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
end

	^ self anchor: ReAnchor end! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:27:36'!
endOfLine

	^ self anchor: ReAnchor endOfLine! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
notWordBoundary

	^ self anchor: ReAnchor notWordBoundary! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
start

	^ self anchor: ReAnchor start! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
wordBoundary

	^ self anchor: ReAnchor wordBoundary! !

!ReCharacterNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 16:14:22'!
compileTo: aProgram

	aProgram characterClass: characters! !

!ReCharacterNode methodsFor: 'private' stamp: 'ess 11/7/2024 02:16:47'!
setCharacterClass: aCharacterClass

	characters := aCharacterClass.
	^ self! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:50:56'!
character: aCharacter

	^ self characterClass:
			(ReCharacterClass character: aCharacter)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/7/2024 02:16:13'!
characterClass: aCharacterClass

	^ self new
		setCharacterClass: aCharacterClass! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 08:53:50'!
class: aCharacterClass

	^ self new
		setCharacterClass: aCharacterClass! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 09:00:12'!
codepoint: aCodepoint

	^ self characterClass:
			(ReCharacterClass codepoint: aCodepoint)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 11:55:34'!
generalCategory: unicodeGeneralCategoryName

	^ self characterClass:
			(ReCharacterClass generalCategory: unicodeGeneralCategoryName)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:50:56'!
wildcard

	^ self characterClass:
			(ReCharacterClass wildcard)! !

!ReGroupNode methodsFor: 'private' stamp: 'ess 11/6/2024 12:12:02'!
setNode: aNode slot: aSlotIndex

	node := aNode.
	slot := aSlotIndex.
	^ self! !

!ReGroupNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 12:07:17'!
compileTo: aProgram

	aProgram
		saveStart: slot;
		compileNode: node;
		saveEnd: slot! !

!ReGroupNode class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 12:11:35'!
with: aNode slot: aSlotIndex

	^ self new
		setNode: aNode
		slot: aSlotIndex! !

!ReNullNode methodsFor: 'as yet unclassified' stamp: 'ess 11/17/2024 08:35:34'!
compileTo: aProgram! !

!ReNullNode class methodsFor: 'as yet unclassified' stamp: 'ess 11/17/2024 08:52:48'!
new

	instance ifNil: [ instance := self basicNew initialize ].
	^ instance! !

!ReRepetitionNode methodsFor: 'private' stamp: 'ess 11/7/2024 02:31:41'!
setMin: minMatches max: maxMatches

	min := minMatches.
	max := maxMatches.
	^ self! !

!ReRepetitionNode methodsFor: 'private' stamp: 'ess 11/6/2024 09:56:21'!
setNode: aNode min: aMin max: aMax

	node := aNode.
	min := aMin.
	max := aMax.
	^ self! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/6/2024 09:57:08'!
beGreedy

	greedy := true! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/6/2024 09:57:14'!
beNotGreedy

	greedy := false! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/9/2024 09:12:54'!
beNotPossessive

	possessive := false! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/9/2024 09:12:47'!
bePossessive

	possessive := true! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/6/2024 09:57:02'!
isGreedy

	^ greedy! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/9/2024 09:13:06'!
isPossessive

	^ possessive! !

!ReRepetitionNode methodsFor: 'accessing' stamp: 'ess 11/7/2024 02:27:23'!
node: aSyntaxNode

	node := aSyntaxNode! !

!ReRepetitionNode methodsFor: 'initialization' stamp: 'ess 11/9/2024 09:13:19'!
initialize

	min := 0.
	max := nil.
	greedy := true.
	possessive := false! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:14:39'!
compileBranchTo: aProgram match: matchLabel skip: skipLabel

	self isGreedy
			ifTrue: [ aProgram
						jump: matchLabel
						andBranch: skipLabel ]
			ifFalse: [ aProgram
						jump: skipLabel
						andBranch: matchLabel ]! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:18:19'!
compileOptionalTo: aProgram

	max ifNil: [ ^ self compileUnboundedTo: aProgram ].

	(max - min)
		timesRepeat:
			[ | matchLabel skipLabel |
			matchLabel := self newLabel.
			skipLabel := self newLabel.
			self
				compileBranchTo: aProgram
				match: matchLabel
				skip: skipLabel.
			aProgram
				label: matchLabel;
				compileNode: node;
				label: skipLabel ]! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:15:07'!
compileRequiredTo: aProgram

	min timesRepeat: [ node compileTo: aProgram ]! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:15:41'!
compileTo: aProgram

	self
		compileRequiredTo: aProgram;
		compileOptionalTo: aProgram! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:17:46'!
compileUnboundedTo: aProgram

	| repeatLabel matchLabel skipLabel |

	repeatLabel := self newLabel.
	matchLabel := self newLabel.
	skipLabel := self newLabel.

	aProgram label: repeatLabel.
	self
		compileBranchTo: aProgram
		match: matchLabel
		skip: skipLabel.
	aProgram
		label: matchLabel;
		compileNode: node;
		jump: repeatLabel;
		label: skipLabel! !

!ReRepetitionNode class methodsFor: 'as yet unclassified' stamp: 'ess 11/7/2024 02:31:16'!
min: minMatches max: maxMatches

	^ self new
		setMin: minMatches
		max: maxMatches! !

!ReRepetitionNode class methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 06:16:14'!
with: aNode min: minMatches max: maxMatches

	^ self new
		setNode: aNode
		min: minMatches
		max: maxMatches! !

!ReSequenceNode methodsFor: 'accessing' stamp: 'ess 11/6/2024 06:06:29'!
addChild: aNode

	children add: aNode! !

!ReSequenceNode methodsFor: 'initialization' stamp: 'ess 11/6/2024 06:19:18'!
initialize

	children := OrderedCollection new! !

!ReSequenceNode methodsFor: 'private' stamp: 'ess 11/6/2024 06:18:54'!
setFirstChild: firstNode secondChild: secondNode

	self addChild: firstNode.
	self addChild: secondNode.
	^ self! !

!ReSequenceNode class methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 06:18:11'!
with: firstChild with: secondChild

	^ self new
		setFirstChild: firstChild
		secondChild: secondChild! !

!ReAlternationNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 09:54:53'!
compileTo: aProgram

	| alternativesDone |

	alternativesDone := self newLabel.
	children allButLast do:
		[ :each | | thisAlternative nextAlternative |
		thisAlternative := self newLabel.
		nextAlternative := self newLabel.
		aProgram
			jump: thisAlternative
			andBranch: nextAlternative.
		aProgram
			label: thisAlternative;
			compileNode: each;
			jump: alternativesDone;
			label: nextAlternative ].
	aProgram
		compileNode: children last;
		label: alternativesDone! !

!ReAlternationNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 09:52:07'!
or: aNode
	"Alternate with aNode"

	self addChild: aNode.
	^ self! !

!ReConcatenationNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 09:51:42'!
and: aNode
	"Concatenate aNode in sequence"

	self addChild: aNode.
	^ self! !

!ReConcatenationNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 07:04:09'!
compileTo: aProgram

	children do: [ :each | each compileTo: aProgram ]! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 05:34:31'!
character

	^ character! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 05:59:02'!
instructionAt: aProgramCounter

	^ program instructionAt: aProgramCounter! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:41:38'!
position
	"String index of current character, from 0 (before the first character) to size + 1 (after the last character)."

	^ position! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 08:17:03'!
ready

	| ready |
	
	ready := scheduled.
	scheduled := OrderedCollection new.
	ready do: [ :each | each ready ].
	^ ready! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 06:26:27'!
result

	^ result ifNotNil: [ result on: input ]! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 08:32:38'!
result: aMatchResult

	result := aMatchResult.
	running := OrderedCollection new! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:42:12'!
size
	"Number of characters in string being matched."

	^ input size! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 11/7/2024 06:17:06'!
slotsNeeded

	^ program slotsNeeded! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 11/16/2024 09:46:42'!
match: aString

	| stream |
	
	position := 0.
	scheduled := OrderedCollection new.
	(ReThread process: self)
		start.

	input := aString.
	stream := input readStream.
	[ stream atEnd ]
		whileFalse:
			[ character := stream next.
			position := stream position.
			running := self ready.
			running isEmpty
				ifTrue: [ ^ nil ].
			[ running notEmpty ]
				whileTrue:
					[ | thread |
					thread := running removeFirst.
					thread execute ] ].
			
	^ self result! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 11/21/2024 10:34:55'!
match: aString startingAt: startIndex endingAt: endIndex

	| stream |
	
	position := startIndex - 1.
	scheduled := OrderedCollection new.
	(ReThread process: self)
		start.

	input := aString.
	stream := input readStream.
	stream position: startIndex - 1.
	[ stream atEnd or: [ stream position > endIndex ] ]
		whileFalse:
			[ character := stream next.
			position := stream position.
			running := self ready.
			running isEmpty
				ifTrue: [ ^ self result ].
			[ running notEmpty ]
				whileTrue:
					[ | thread |
					thread := running removeFirst.
					thread execute ] ].
			
	^ self result! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:01:55'!
schedule: aThread

	(scheduled includes: aThread)
		ifFalse: [ scheduled addLast: aThread ]! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:01:55'!
suspend: aThread

	self halt.
	(scheduled includes: aThread)
		ifFalse: [ scheduled addLast: aThread ]! !

!ReProcess methodsFor: 'private' stamp: 'ess 11/7/2024 05:50:30'!
setProgram: aProgram

	program := aProgram.
	^ self! !

!ReProcess class methodsFor: 'instance creation' stamp: 'ess 11/7/2024 06:04:39'!
program: aProgram

	^ self new
		setProgram: aProgram! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/5/2024 20:48:47'!
addInstruction: anInstruction

	instructions add: anInstruction! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:50:07'!
anchor: anAnchor

	self addInstruction:
			(ReAnchorInstruction anchor: anAnchor)! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:50:01'!
characterClass: aCharacterClass

	self addInstruction:
			(ReCharacterInstruction class: aCharacterClass)! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/5/2024 20:47:38'!
compileNode: aSyntaxNode

	aSyntaxNode compileTo: self! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 12:59:20'!
initialize

	slotsNeeded := 1.
	instructions := OrderedCollection new! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:50:12'!
instructionAt: anIndex

	^ instructions
		at: anIndex
		ifAbsent: [ ReInstruction new ]! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:54'!
jump: jumpTarget

	self addInstruction:
			(ReJumpInstruction jump: jumpTarget)! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:47'!
jump: priorityTarget andBranch: secondaryTarget

	self addInstruction:
			(ReBranchInstruction
				jump: priorityTarget
				andBranch: secondaryTarget)! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 07:02:18'!
label: aLabel

	aLabel counter: instructions size + 1! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:40'!
match

	self addInstruction:
			(ReMatchInstruction new)! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:32'!
saveEnd: aSlotIndex

	self addInstruction:
			(ReSaveInstruction end: aSlotIndex)
				! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/16/2024 09:49:32'!
saveStart: aSlotIndex

	self addInstruction:
			(ReSaveInstruction start: aSlotIndex)
				! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 12:59:41'!
slotsNeeded

	^ slotsNeeded! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 12:59:34'!
slotsNeeded: totalSlots

	slotsNeeded := totalSlots! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 12/3/2024 09:02:36'!
end

	^end! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 15:12:49'!
end: matchEndPosition

	end := matchEndPosition! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 12/3/2024 09:03:25'!
on: aString

	(start isNil or: [end isNil]) ifTrue: [^nil].
	^aString
		copyFrom: start
		to: end! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 12/3/2024 09:02:52'!
start

	^start! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 15:12:40'!
start: matchStartPosition

	start := matchStartPosition! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/7/2024 05:08:37'!
character

	^ process character! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/7/2024 06:17:32'!
counter

	^ counter! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/9/2024 18:57:06'!
fetch: aProgramCounter

	counter := aProgramCounter.
	self fetch! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/7/2024 05:58:26'!
instruction

	^ process instructionAt: counter! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:42:56'!
position
	"Position in input of current character."

	^ process position! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:43:11'!
size
	"Total number of characters in input."

	^ process size! !

!ReThread methodsFor: 'comparing' stamp: 'ess 11/6/2024 13:10:06'!
= aThread

	self == aThread ifTrue: [ ^ true ].
	^ (aThread isKindOf: self class)
			and: [ aThread counter = counter ]! !

!ReThread methodsFor: 'comparing' stamp: 'ess 11/6/2024 13:10:15'!
hash

	^ self class hash
			bitXor: counter hash! !

!ReThread methodsFor: 'copying' stamp: 'ess 11/7/2024 03:18:28'!
postCopy

	result := result copy.
	^ self! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/9/2024 19:02:30'!
execute
	"Carry-out one instruction.

	Whether or not the thread continues to execute after this is for the instruction to decide.  If the instruction choses not to continue, this thread will silently stop."

	self instruction execute: self! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/9/2024 18:52:33'!
fetch
	"Look at the next instruction.  If it does not require a character from the input, go ahead and execute it directly.  Otherwise, schedule it to run in the next cycle."

	self instruction waitsForNextCharacter
			ifFalse: [ self run ]
			ifTrue: [ self schedule ]! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:00:08'!
jump: aTarget

	self fetch: aTarget counter! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 05:04:03'!
jump: priorityTarget andBranch: secondaryTarget

	| branch |

	branch := self copy.
	self jump: priorityTarget.
	branch jump: secondaryTarget! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 06:18:17'!
match

	process result: result! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/9/2024 18:59:22'!
ready
	"Prepare this thread for execution."

	executed := Set new! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:16:22'!
run

	(executed includes: counter)
		ifTrue: [ ^ self ].

	executed add: counter.
	self execute! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/21/2024 10:38:12'!
saveEnd: slotIndex

	result
		endSlot: slotIndex
		at: process position! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 06:01:50'!
saveStart: slotIndex

	result
		startSlot: slotIndex
		at: process position + 1! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:01:07'!
schedule

	process schedule: self! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 07:59:55'!
step

	self fetch: counter + 1! !

!ReThread methodsFor: 'private' stamp: 'ess 11/16/2024 09:34:36'!
setProcess: aProcess

	process := aProcess.
	counter := 1.
	result := ReMatch slotsNeeded: process slotsNeeded.
	^ self! !

!ReThread methodsFor: 'as yet unclassified' stamp: 'ess 11/7/2024 08:19:22'!
start

	self ready.
	self fetch: 1! !

!ReThread class methodsFor: 'instance creation' stamp: 'ess 11/7/2024 05:54:33'!
process: aProcess

	^ self new
		setProcess: aProcess! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 12/3/2024 09:05:20'!
endOfGroup: anIndex

	^ (self registerAt: anIndex) end! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:42:18'!
endingAt

	^ endingAt! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:35:12'!
expand: aTemplateString! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 12/3/2024 09:05:20'!
groupAt: anIndex

	string ifNil: [^nil].
	^(self registerAt: anIndex) on: string! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:35:29'!
groups! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:38:34'!
lastGroup! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:38:32'!
lastIndex! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:35:33'!
namedGroups! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:41:08'!
pattern

	^ pattern! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:41:44'!
pattern: aCompiledPattern

	pattern := aCompiledPattern! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:37:50'!
spanOfGroup: anIndex
! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 12/3/2024 09:05:20'!
startOfGroup: anIndex

	^ (self registerAt: anIndex) start! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:42:24'!
startingAt

	^ startingAt! !

!ReMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:40:29'!
string

	^ string! !

!ReMatch methodsFor: 'copying' stamp: 'ess 11/16/2024 09:45:35'!
postCopy

	register0 := register0 ifNotNil: [ register0 copy ].
	registers := registers ifNotNil:
				[ registers collect: [ :each | each copy ] ].
	^ self! !

!ReMatch methodsFor: 'private' stamp: 'ess 12/3/2024 09:05:20'!
endSlot: slotIndex at: matchPosition

	(self registerAt: slotIndex)
		end: matchPosition! !

!ReMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:40:21'!
on: aString

	string := aString! !

!ReMatch methodsFor: 'private' stamp: 'ess 12/3/2024 09:05:20'!
registerAt: anIndex

	^anIndex isZero
		ifTrue: [register0 ifNil: [register0 := ReRegister new]]
		ifFalse: [(registers at: anIndex) ifNil:
					[registers
						at: anIndex
						put: ReRegister new]]! !

!ReMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:45:15'!
setSlots: totalSlots

	totalSlots > 1
		ifTrue: [ registers := Array new: totalSlots - 1 ]! !

!ReMatch methodsFor: 'private' stamp: 'ess 12/3/2024 09:05:20'!
startSlot: slotIndex at: matchPosition

	(self registerAt: slotIndex)
		start: matchPosition! !

!ReMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:41:21'!
string: aString

	string := aString! !

!ReMatch class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 13:22:27'!
slotsNeeded: totalSlots

	^ self new
		setSlots: totalSlots! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:15:48'!
allMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex
	"Answer a collection of all non-overlapping matches from aCharacterSequence, ordered from left-to-right."

	^self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		collect: [:each | each]! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:35:03'!
allMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex asStringsCollect: aUnaryBlock
	"Answer a collection of the results of evaluating aUnaryBlock on all non-overlapping substring matches from aCharacterSequence."

	| result |
	result := OrderedCollection new.
	self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		asStringsDo: [:each | result add: (aUnaryBlock value: each)].
	^result! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:17:11'!
allMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex asStringsDo: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping substring matches from aCharacterSequence."

	self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		do: [:each | aUnaryBlock value: (each groupAt: 0)]! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:13:45'!
allMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex collect: aUnaryBlock
	"Answer a collection of the results of evaluating aUnaryBlock on all non-overlapping matches from aCharacterSequence."

	| result |
	result := OrderedCollection new.
	self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		do: [:each | result add: (aUnaryBlock value: each)].
	^result! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:13:11'!
allMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex do: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping match from aCharacterSequence."

	| nextStart |
	nextStart := startIndex.
	[nextStart <= endIndex] whileTrue:
		[| match |
		match := self
			findIn: aCharacterSequence
			startingAt: nextStart
			endingAt: endIndex.
		match
			ifNil: [nextStart := endIndex + 1]
			ifNotNil:
				[aUnaryBlock value: match.
				nextStart := (match endOfGroup: 0) + 1]]! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 12/3/2024 09:16:33'!
allMatchesAsStrings: aCharacterSequence startingAt: startIndex endingAt: endIndex
	"Answer a collection of all non-overlapping substring matches from aCharacterSequence, ordered from left-to-right."

	^self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		asStringsCollect: [:each | each]! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/21/2024 10:10:38'!
findIn: aCharacterSequence startingAt: startIndex endingAt: endIndex

	startIndex
		to: endIndex
		do: [ :each | | match |
			match := self
						match: aCharacterSequence
						startingAt: each
						endingAt: endIndex.
			match ifNotNil: [ ^ match ] ].
	^ nil! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 08:27:53'!
fullMatch: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ self
		match: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 08:50:10'!
fullMatchAsString: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ self
		fullMatch: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/21/2024 10:05:12'!
match: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ (ReProcess program: program)
		match: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 08:53:40'!
matchAsString: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ self
		match: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 09:28:35'!
replaceAllIn: aCharacterSequence startingAt: startIndex endingAt: endIndex with: aTemplateString! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 09:28:10'!
replaceIn: aCharacterSequence startingAt: startIndex endingAt: endIndex with: aTemplateString! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/21/2024 10:40:22'!
separateSubstringsOf: aCharacterSequence startingAt: startIndex endingAt: endIndex

	| substrings nextStart |
	
	substrings := OrderedCollection new.
	nextStart := startIndex.
	self
		allMatches: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex
		do: [ :each | | matchStart |
			matchStart := each startOfGroup: 0.
			matchStart > nextStart
				ifTrue: [ substrings add: (aCharacterSequence
											copyFrom: nextStart
											to: matchStart - 1) ].
			nextStart := (each endOfGroup: 0) + 1 ].
	endIndex > nextStart
		ifTrue: [ substrings add: (aCharacterSequence
									copyFrom: nextStart
									to: endIndex) ].
	^ substrings! !

!RePattern methodsFor: 'evaluating' stamp: 'ess 11/16/2024 09:25:41'!
tokensIn: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ self
		allMatchesAsStrings: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'shortcuts' stamp: 'ess 12/10/2024 10:32:36'!
doesNotUnderstand: aMessage

	| newSelector aCharacterSequence startIndex endIndex |
	
	newSelector := (aMessage keywords first, #startingAt:endingAt:) asSymbol.
	(self respondsTo: newSelector) ifFalse: [^super doesNotUnderstand: aMessage].

	aCharacterSequence := aMessage arguments at: 1.
	startIndex := 1.
	endIndex := aCharacterSequence size.
	aMessage keywords withIndexDo:
		[:each :index |
		each == #startingAt ifTrue: [startIndex := aMessage arguments at: index].
		each == #endingAt ifTrue: [endIndex := aMessage argument at: index]].

	^self
		perform: newSelector
		with: aCharacterSequence
		with: startIndex
		with: endIndex! !

!RePattern methodsFor: 'testing' stamp: 'ess 11/17/2024 06:56:30'!
fullyMatches: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ (self
		fullMatch: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex)
			notNil! !

!RePattern methodsFor: 'testing' stamp: 'ess 11/16/2024 09:02:22'!
indexIn: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ self
		findIn: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex! !

!RePattern methodsFor: 'testing' stamp: 'ess 11/17/2024 06:56:13'!
matches: aCharacterSequence startingAt: startIndex endingAt: endIndex

	^ (self
		match: aCharacterSequence
		startingAt: startIndex
		endingAt: endIndex)
			notNil! !

!RePattern methodsFor: 'private' stamp: 'ess 11/16/2024 09:46:53'!
compileNode: aNode slotsNeeded: totalSlots

	program := ReProgram new.
	program
		slotsNeeded: totalSlots;
		compileNode: aNode;
		match! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 12/7/2024 12:24:23'!
compileNode: aNode slotsNeeded: totalSlots

	^self new
		compileNode: aNode
		slotsNeeded: totalSlots! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 12/7/2024 12:24:44'!
from: aStringOrPattern

	(aStringOrPattern isKindOf: self) ifTrue: [^aStringOrPattern].
	^self fromString: aStringOrPattern! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 12/7/2024 12:25:40'!
fromString: aCharacterSequence

	^self cache
		at: aCharacterSequence
		ifAbsentPut:
			[self
				fromString: aCharacterSequence
				caseInsensitive: false
				multiLine: false]! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 08:20:01'!
fromString: aCharacterSequence caseInsensitive: caseInsensitive

	^ self
		fromString: aCharacterSequence
		caseInsensitive: caseInsensitive
		multiLine: false! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:50:19'!
fromString: aCharacterSequence caseInsensitive: caseInsensitive multiLine: multiLine

	^ ReCompiler new
		compile: aCharacterSequence! !

!RePattern class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 08:20:22'!
fromString: aCharacterSequence multiLine: multiLine

	^ self
		fromString: aCharacterSequence
		caseInsensitive: false
		multiLine: multiLine! !

!RePattern class methodsFor: 'as yet unclassified' stamp: 'ess 12/7/2024 12:23:52'!
cache

	^cache ifNil: [cache := LookupCache lru: 25]! !

!RePatternTests methodsFor: 'assertions' stamp: 'ess 11/18/2024 07:12:06'!
assertFullyMatches: aString

	self assert: (pattern fullyMatches: aString)! !

!RePatternTests methodsFor: 'assertions' stamp: 'ess 11/18/2024 07:12:06'!
assertMatches: aString

	self assert: (pattern matches: aString)! !

!RePatternTests methodsFor: 'assertions' stamp: 'ess 11/18/2024 07:12:06'!
denyFullyMatches: aString

	self deny: (pattern fullyMatches: aString)! !

!RePatternTests methodsFor: 'assertions' stamp: 'ess 11/18/2024 07:12:06'!
denyMatches: aString

	self deny: (pattern matches: aString)! !

!RePatternTests methodsFor: 'running' stamp: 'ess 11/18/2024 07:12:06'!
compile: regularExpression

	^ pattern := RePattern fromString: regularExpression! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:11:52'!
testAnchor

	self compile: '^bbb'.
	self denyMatches: 'abbb'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:11:25'!
testBacktrack

	| target |
	
	target := 'aaaaa'.  "5 characters"
	target := target, target.  "10"
	target := target, target, target, target, target.  "50"

	self compile: '(a*)*'.
	self assertFullyMatches: target! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 12/6/2024 16:11:50'!
testBlockComment

	self compile: 'ab (?# (?# a|b ) b )'.
	self assertFullyMatches: 'ab'.
	self denyFullyMatches: 'abb'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:12:06'!
testExample1

	| result |

	self compile: 'a (bb)+ a'.
	self assertFullyMatches: 'abba'.
	self assertFullyMatches: 'abbbba'.
	self denyMatches: 'abbba'.

	result := pattern fullMatch: 'abbbba'.
	self
		assert: (result groupAt: 0)
		equals: 'abbbba'.
	self
		assert: (result groupAt: 1)
		equals: 'bb'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 06:59:48'!
testExample2a

	self compile: 'abab | abbb'.
	self assertFullyMatches: 'abab'.
	self assertFullyMatches: 'abbb'.
	self denyMatches: 'abba'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:12:06'!
testExample2b

	| result |
	
	self compile: 'ab ((?# either ) ab | (?# or) bb)'.
	self assertFullyMatches: 'abab'.
	self assertFullyMatches: 'abbb'.
	self denyMatches: 'abba'.
	
	result := pattern fullMatch: 'abbb'.
	self
		assert: (result groupAt: 0)
		equals: 'abbb'.
	self
		assert: (result groupAt: 1)
		equals: 'bb'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:12:06'!
testExample2c

	| result |
	
	self compile: 'ab (a|b) b'.
	self assertFullyMatches: 'abab'.
	self assertFullyMatches: 'abbb'.
	self denyMatches: 'abba'.
	
	result := pattern fullMatch: 'abab'.
	self
		assert: (result groupAt: 1)
		equals: 'a'! !

!RePatternTests methodsFor: 'tests' stamp: 'ess 11/18/2024 07:10:49'!
testGeneralCategory

	self compile: '\p{ Lowercase_Letter }'.
	self denyMatches: '1'.
	self denyMatches: 'A'.
	self assertMatches: 'ß'.
	
	self compile: '\P{ Lowercase_Letter } # not a lowercase letter'.
	self assertMatches: '1'.
	self assertMatches: 'A'.
	self denyMatches: 'ß'.
	
	self compile: '\p{ Decimal_Number }'.
	self assertMatches: '1'.
	self denyMatches: 'A'.
	self denyMatches: 'ß'! !

!CharacterSequence methodsFor: '*Regexp-accessing' stamp: 'ess 12/3/2024 08:55:39'!
allRegexpMatchesAsStrings: aRegularExpression

	^(RePattern fromString: aRegularExpression) allMatchesAsStrings: self! !

!CharacterSequence methodsFor: '*Regexp-accessing' stamp: 'ess 11/21/2024 12:30:07'!
regexpReplaceAll: regularExpression with: aTemplateString! !

!CharacterSequence methodsFor: '*Regexp-accessing' stamp: 'ess 11/21/2024 08:58:09'!
substringsSeparatedByRegexp: aRegularExpression

	^ (RePattern fromString: aRegularExpression)
		separateSubstringsOf: self! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:30:03'!
isPosixAlnum
	"Alphanumeric in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	cp < `$0 codePoint` ifTrue: [ ^ false ].
	cp <= `$9 codePoint` ifTrue: [ ^ true ].
	cp < `$A codePoint` ifTrue: [ ^ false ].
	cp <= `$Z codePoint` ifTrue: [ ^ true ].
	^ `$a codePoint` <= cp
		and: [ cp <= `$z codePoint` ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:30:13'!
isPosixAlpha
	"Alphabetic in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	cp < `$A codePoint` ifTrue: [ ^ false ].
	cp <= `$Z codePoint` ifTrue: [ ^ true ].
	^ `$a codePoint` <= cp
		and: [ cp <= `$z codePoint` ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/17/2024 18:00:13'!
isPosixBlank
	"Horizontal whitespace in the 7-bit ASCII character set"
	
	^ self == Character tab
		or: [ self == Character space ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:20:02'!
isPosixCntrl
	"Control in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	^ cp <= 31
		or: [ cp = 127 ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:29:28'!
isPosixDigit
	"Decimal digit in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
 	^ `$0 codePoint` <= cp
		and: [ cp <= `$9 codePoint` ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:31:18'!
isPosixGraph
	"Graphic--has a printed representation--in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	^ 33 <= cp  "Excludes space, see #isPosixPrint"
		and: [ cp <= 126 ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:30:55'!
isPosixLower
	"Lowercase letter in the 7-bit ASCII character set."

	| cp |
	cp := self codePoint.
	^ `$a codePoint` <= cp
		and: [ cp <= `$z codePoint` ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:31:28'!
isPosixPrint
	"Printable--takes up space when displayed--in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	^ 32 <= cp  "Includes space, see #isPosixGraph"
		and: [ cp <= 126 ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/17/2024 18:39:08'!
isPosixPunct
	"Punctuation in the 7-bit ASCII character set"
	
	^ self isPosixGraph
		and: [ self isPosixAlnum not ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/17/2024 17:57:58'!
isPosixSpace
	"Horizontal or vertical whitespace in the 7-bit ASCII character set"
	
	"TAB, LF, VT, FF, CR, or Space"
	^ #(9 10 11 12 13 32) statePointsTo: self codePoint! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:32:04'!
isPosixUpper
	"Uppercase letter in the 7-bit ASCII character set"

	| cp |
	cp := self codePoint.
	^ `$A codePoint` <= cp
		and: [ cp <= `$Z codePoint` ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/17/2024 19:22:20'!
isPosixWord

	^ self == $_
		or: [ self isPosixAlnum ]! !

!Character methodsFor: '*Regexp-testing' stamp: 'ess 11/18/2024 03:32:21'!
isPosixXDigit
	"Hexadecimal digit in the 7-bit ASCII character set

	N.B., The awkward name is not just for compatibily with the old POSIX [:xdigit:], but also to leave #isHexDigit free to support Unicode hex digits."

	| cp |
	cp := self codePoint.
	cp < `$0 codePoint` ifTrue: [ ^ false ].
	cp <= `$9 codePoint` ifTrue: [ ^ true ].
	cp < `$A codePoint` ifTrue: [ ^ false ].
	cp <= `$F codePoint` ifTrue: [ ^ true ].
	^ `$a codePoint` <= cp
		and: [ cp <= `$f codePoint` ]! !

!Character methodsFor: '*Regexp-accessing' stamp: 'ess 11/18/2024 03:08:35'!
xDigitValue
	"Posix(-ish) digitValue

	digittoint(3): Always returns an integer from the range of 0 to 15.  If the given character was not a digit as defined by isxdigit(3), the function will return 0."

	| cp |
	cp := self codePoint.
	cp < `$0 codePoint` ifTrue: [ ^ 0 ].
	cp <= `$9 codePoint` ifTrue: [ ^ cp - `$0 codePoint` ].
	cp < `$A codePoint` ifTrue: [ ^ 0 ].
	cp <= `$F codePoint` ifTrue: [ ^ cp - (`$A codePoint - 10`) ].
	cp < `$a codePoint` ifTrue: [ ^ 0 ].
	cp <= `$f codePoint` ifTrue: [ ^ cp - (`$a codePoint - 10`) ].
	^ 0! !
