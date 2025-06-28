'From Cuis7.5 [latest update: #7279] on 28 June 2025 at 11:09:32 am'!
'Description '!
!provides: 'Regexp' 1 5!
!requires: 'Cuis-Base' 75 7279 nil!
!requires: 'Unicode' 1 6 nil!
SystemOrganization addCategory: #Regexp!
SystemOrganization addCategory: #'Regexp-Private'!
SystemOrganization addCategory: #'Regexp-Public'!
SystemOrganization addCategory: #'Regexp-Tests'!


!classDefinition: #RegexpError category: #'Regexp-Public'!
Error subclass: #RegexpError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'RegexpError class' category: #'Regexp-Public'!
RegexpError class
	instanceVariableNames: ''!

!classDefinition: #RegexpSyntaxError category: #'Regexp-Public'!
RegexpError subclass: #RegexpSyntaxError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'RegexpSyntaxError class' category: #'Regexp-Public'!
RegexpSyntaxError class
	instanceVariableNames: ''!

!classDefinition: #ReAnchor category: #'Regexp-Private'!
Object subclass: #ReAnchor
	instanceVariableNames: 'predicate debugString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAnchor class' category: #'Regexp-Private'!
ReAnchor class
	instanceVariableNames: 'beginningOfInput beginningOfLine beginningOfWord endOfInput endOfLine endOfWord notWordBoundary wordBoundary'!

!classDefinition: #ReCharacterClass category: #'Regexp-Private'!
Object subclass: #ReCharacterClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCharacterClass class' category: #'Regexp-Private'!
ReCharacterClass class
	instanceVariableNames: ''!

!classDefinition: #ReBitmapClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReBitmapClass
	instanceVariableNames: 'bitmap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReBitmapClass class' category: #'Regexp-Private'!
ReBitmapClass class
	instanceVariableNames: 'blank decimal space word'!

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

!classDefinition: #ReEnumeratedClass category: #'Regexp-Private'!
ReCharacterClass subclass: #ReEnumeratedClass
	instanceVariableNames: 'characters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReEnumeratedClass class' category: #'Regexp-Private'!
ReEnumeratedClass class
	instanceVariableNames: ''!

!classDefinition: #ReCaseInsensitiveEnumeratedClass category: #'Regexp-Private'!
ReEnumeratedClass subclass: #ReCaseInsensitiveEnumeratedClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCaseInsensitiveEnumeratedClass class' category: #'Regexp-Private'!
ReCaseInsensitiveEnumeratedClass class
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

!classDefinition: #RePredicateClass category: #'Regexp-Private'!
ReCharacterClass subclass: #RePredicateClass
	instanceVariableNames: 'predicate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'RePredicateClass class' category: #'Regexp-Private'!
RePredicateClass class
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
	instanceVariableNames: 'default'!

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

!classDefinition: #ReNoopInstruction category: #'Regexp-Private'!
ReInstruction subclass: #ReNoopInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReNoopInstruction class' category: #'Regexp-Private'!
ReNoopInstruction class
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
	instanceVariableNames: ''!

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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReAlternationNode class' category: #'Regexp-Private'!
ReAlternationNode class
	instanceVariableNames: ''!

!classDefinition: #ReConcatenationNode category: #'Regexp-Private'!
ReSequenceNode subclass: #ReConcatenationNode
	instanceVariableNames: ''
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
	instanceVariableNames: 'slotsNeeded instructions findLabel matchLabel'
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
	instanceVariableNames: 'process counter instruction shouldSuspend executed result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReThread class' category: #'Regexp-Private'!
ReThread class
	instanceVariableNames: ''!

!classDefinition: #RegexpMatch category: #'Regexp-Public'!
Object subclass: #RegexpMatch
	instanceVariableNames: 'pattern string startingAt endingAt register0 registers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'RegexpMatch class' category: #'Regexp-Public'!
RegexpMatch class
	instanceVariableNames: ''!

!classDefinition: #RegexpPattern category: #'Regexp-Public'!
Object subclass: #RegexpPattern
	instanceVariableNames: 'program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Public'!
!classDefinition: 'RegexpPattern class' category: #'Regexp-Public'!
RegexpPattern class
	instanceVariableNames: ''!

!classDefinition: #RegexpPatternTests category: #'Regexp-Tests'!
TestCase subclass: #RegexpPatternTests
	instanceVariableNames: 'pattern'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Tests'!
!classDefinition: 'RegexpPatternTests class' category: #'Regexp-Tests'!
RegexpPatternTests class
	instanceVariableNames: ''!

!classDefinition: #ReCompiler category: #'Regexp-Private'!
RecursiveDescentParser subclass: #ReCompiler
	instanceVariableNames: 'flags slotsUsed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regexp-Private'!
!classDefinition: 'ReCompiler class' category: #'Regexp-Private'!
ReCompiler class
	instanceVariableNames: ''!


!ReInstruction commentStamp: '<historical>' prior: 0!
An "opcode", of sorts, for the regular expression matching virtual machine.!

!ReAnchorInstruction commentStamp: '<historical>' prior: 0!
Evaluate an anchor condition.  Progress the thread only when the anchor is satisfied.!

!ReCharacterInstruction commentStamp: '<historical>' prior: 0!
Look for a character matching some criteria.  Progress the thread when we find a match.!

!ReNode commentStamp: '<historical>' prior: 0!
A part of the intermediate syntax tree constructed during compilation.!

!RegexpPattern commentStamp: 'ess 5/31/2025 08:33:24' prior: 0!
This documentation assumes you are already familiar with regular expressions and only need to know the flavor of the day.  For a more tutorial introduction, [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions) is as good a place as any to start.

The expression syntax is based on [ECMAScript](https://tc39.es/ecma262/multipage/text-processing.html#sec-regexp-regular-expression-objects) as that seems to be the de-facto standard.  It also borrows from [Perl5](https://perldoc.perl.org/perlre).

Changes from the ECMAScript standard include

- "V-mode" is always enabled.
	- Both the input and the pattern are interpreted as Unicode strings.
 	- Set operations (`&&`, `--`) are suported.
- Surrogates must always be paired (i.e., `\uXXXX\uXXXX`) because we're not matching UTF-16.
- Patterns are always multiline.
- Whitespace is never literal.
	- You need to escape spaces (i.e., "\ ") if you intend them as literals.
	- You can otherwise use whitespace liberally, and patterns can span multiple lines.
- Comments are supported.
	- `#` introduces a line comment, ignoring everything from that point to the end of the line.
	- `(?# ... )` is a block comment, which cannot include a literal `)`.  Note that block comments can be inline or can span mulitple lines.
- Parsing is lenient.
	- It is not an error to use the "reserved for future expansion" double-punctuation characters, they are interpreted as (somewhat pointless) literals.
	- Any metacharacters that do not apply in their context in the pattern are also interpreted as literals.

Any other deviations from the standard are errors.

## Metacharacters

Metacharacters, or syntax characters, make up the syntax of the regular expression and do not represent literals to be matched.  Whitespace, both horizontal (blank) and vertical, is used for formatting and readability.  Any other characters represent literals to be matched.

Outside of a character class, the following are interpreted as metacharacters.

- `#` begins a line comment.
- `$` matches the end of a line (just before a newline or carriage return).
- `(` begins a group.
- `*`matches the previous atom zero-or-more times.
- `+` matches the previous atom one-or-more times.
- `.` matches any single character, including vertical whitespace.
- `?` matches the previous atom zero-or-one times.
- `[` begins a character class.
- `\` is a character escape.
- `^` matches the beginning of a line (just after "\n", "\r", or "\r\n").
- `{` quantifies the previous atom.
- `|` separates alternative patterns.

Groups `(`, character classes `[`, escapes `\`, and quantifiers `{` each have their own internal syntax.

Most metacharacters retain their meaning within a group, except that

- `)` is a literal only as the first character, and otherwise ends the group.
- `?` immediately after the opening `(` introduces various extensions.
- `?#` immediately after the opening `(` is a block comment that extends to the matching `)`.  Block comments can nest but cannot otherwise contain unescaped ")" characters: `(?# (?# this) is commented)` and `(?# so is \) this)` , but `(?# (this) is not)`.

Character classes use a largely different set of metacharacters.

- `$` `(` `*` `+` `.` `?` `{` `|` are now literals
- `]` is literal only as the first character (or second, after `^`), and otherwise ends the class
- `^` as the first character complements the class, but is elsewhere literal
- `-` between two characters defines a range, but is elsewhere literal
- `&&` between two sets is intersection
- `--` between two sets is difference
- Note that set union is represented by simple adjancency.

## Character escapes

Outside of a character class, we recognize the following escape sequences.

- `\\` matches a literal `\`
- `\0` (zero, not followed by another decimal digit) matches a NUL `\u0000`
- `\a` matches a bell (alarm) `\u0007`
- `\e` matches an escape `\u001B`
- `\f` matches a new page (form feed) `\u000C`
- `\r` matches a carriage return `\u000D`
- `\n` matches a newline `\u000A`
- `\t` matches a tab `\u0009`
- `\v` matches a vertical tab `\u000B`
- `\d` matches any ASCII decimal digit `[0-9]`
- `\D` is the complement of `\d`
- `\s` matches a blank (horizontal whitespace)
- `\S` is the complement of `\s`
- `\w` matches a "word" character.  A word character is defined to include underscore `_` and any ASCII alphanumeric character `[0-9A-Za-z_]`.  In a case-insensitive match, it also includes any character that case-folds to one of these characters.
- `\W` is the complement of `\w`
- `\p{ unicode property name or value }` matches a Unicode character class
- `\p{ unicode propery name = value }` also matches a Unicode character class
- `\P` is the complement of `\p`
- `\b` matches a word boundary.   A word boundary is any position in the input that has a "word" character (`\w`) to one side (before or after) but not the other. It can match at the start or the end of the input, as there is necessarily no word character before the start or after the end.
- `\B` is the inverse of `b`: either both characters before and after the current position are word characters, or both are not.  It cannot match the start of end of the input.
- `\A` matches the start of the input (in contrast to `^` matching the beginning of a line)
- `\Z` matches the end of the input (in contrast to `$` matching the end of a line)
- `\cC` (`C` is any ASCII character) matches a control character in the range 0 to 31, taking the value of `C` mod 32.
- `\uXXXX` (exactly four hexadecimal digits) matches a codepoint.  Two adjacent Unicode escapes (`\uXXXX\uXXXX`) can be used to represent a character as a surrogate pair, but it still matches a single character.
- `\u{X...}` (one to six hexadecimal digits) is another way to match a codepoint.
- `\xXX` (exactly two hexadecimal digits) matches an ASCII character
- `\x{X...}` (one or two hexadecimal digits) is another way to match an ASCII character
- `\D...` (one or more decimal digits), without a leading zero (first digit must be 1 to 9), is a backreference. Case-insensitive backreferences can match case-insensitively.
- `\DDD` (exactly three octal digits) can be used to match an ASCII character only if it cannot be mistaken for a backreference

Any other character following a `\` represents a literal.  This includes but is not limited to metacharacters and whitespace.

Within a character class, most character escapes have the same value.

- `\B` `\A` `\Z` (positional anchors) do not have any special meaning
- `\b` represents backspace `\u0008`, losing it's positional interpretation

## Character classes

A basic character class `[` matches the union of all characters and classes listed within, up to the matching `]`.  The characters and classes within can be written either as literals or as [escape sequences](#character-escapes).  Importantly, the escapes `\d` `\D` `\s` `\S` `\w` `\W` `\p` `\P` still define classes.

- `^` as the first character within a class turns it into a complement.
- `]` as the first character (or second, after `^`) is a literal. Anywhere else it ends the class.
- `-` between two character values (i.e., not classes, and not at the beginning or end of the definition, reperesents a character range.  `[1-5]` is the same as `[12345]`.
- `[` introduces a nested character class, which may be but is not necessarily a POSIX class.  Escape it `\[` to match a literal `[`.

Only in a nested class, `:` begins a POSIX class. (So `[[:digit:]]` but not `[:digit:]`.)  POSIX classes only match characters in the ASCII subset.  The supported POSIX classes are

- `[:alnum:]` meaning `[0-9A-Za-z]`
- `[:alpha:]` meaning `[A-Za-z]`
- `[:blank:]` meaning `[\t\ ]` (tab and space only)
- `[:cntrl:]` meaning `[\c@-\c_]` (control characters 0 to 31)
- `[:digit:]` meaning `[0-9]`
- `[:graph:]` meaning `[^[:cntrl:]\ ]` (graphic characters)
- `[:lower:]` meaning `[a-z]`
- `[:print:]` meaning `[^[:cntrl:]]` (printable characters)
- `[:punct:]` meaning `[[:graph:]--[:alnum:]]` (punctuation)
- `[:space:]` meaning `[\t\n\r\f\v\ ]` (both horizontal and vertical whitespace)
- `[:upper:]` meaning `[A-Z]`
- `[:xdigit:]` meaning `[0-9A-Fa-f]`

## Groups

Outside of a character class, `(` begins a group.  Groups are capturing by default, and numbered from the left starting with 1.

- `)` is literal at the beginning of a group, but otherwise ends the group.
- `?` immediately after the opening `(` is an extenion
- `?#` immediately after the opening `(` is a block comment
- `(?:)` is a non-capturing group
- `(?<name>)` assigns a name to the group
- `(?=)` is a lookahead pattern
- `(?!!)` is a negative lookahead pattern
- `(?<=)` is a lookbehind pattern
- `(?<!!)` is a negative lookbehind pattern
- `(?flags-flags)` define local pattern options
- `(?flags-flags:)` is shorthand for defining local pattern options in a non-capturing group
- `(?^flags:)` so is this

## Quantifiers

- `*` zero or more
- `+` one or more
- `?` zero or one
- `{n}` exactly `n`
- `{n,m}` at least `n` but no more than `m`
- `{n,}` `n` or more
- `{,m}` zero to `m`
- `{}` zero or more

Quantifiers are greedy by default.  Append

- `?` to not be greedy
- `+` to be possessive (not allow anything other that the longest match)

## Assertions

### Anchors

- `\A`	beginning of input
- `\Z`	end of input
- `^`	beginning of line
- `$`	end of line
- `\b`	word boundary
- `\B`	not a word boundary
- `\<'	beginning of word
- `\>' 	end of word

### Look-ahead/-behind

- `(?=)`		lookahead
- `(?!!)`		negative lookahead
- `(?<=)`	lookbehind
- `(?<!!)`	negative lookbehind
!

!ReAnchor methodsFor: 'evaluating' stamp: 'ess 11/9/2024 13:01:54'!
value: aThread

	^ predicate value: aThread! !

!ReAnchor methodsFor: 'printing' stamp: 'ess 6/4/2025 05:41:56'!
printOn: aStream

	debugString ifNil: [
		super printOn: aStream.
		^ self ].
	aStream nextPutAll: debugString! !

!ReAnchor methodsFor: 'private' stamp: 'ess 6/2/2025 10:08:40'!
setPredicate: aUnaryBlock debugString: aString

	predicate := aUnaryBlock.
	debugString := aString.
	^ self! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:47:14'!
beginningOfInput
	"An anchor that matches before the first character of the input."

	^ beginningOfInput ifNil: [
		beginningOfInput := self
			predicate: [ :thread | thread isBeginningOfInput ]
			debugString: '\A' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:47:32'!
beginningOfLine
	"An anchor that matches before the first character of a line."

	^ beginningOfLine ifNil: [
		beginningOfLine := self
			predicate: [ :thread | thread isBeginningOfLine ]
			debugString: '^' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:48:01'!
beginningOfWord
	"An anchor that matches before the first character of a word."

	^ beginningOfWord ifNil: [
		beginningOfWord := self
			predicate: [ :thread | thread isBeginningOfWord ]
			debugString: '\<' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:48:25'!
endOfInput
	"An anchor that matches after the last character of the input."

	^ endOfInput ifNil: [
		endOfInput := self
			predicate: [ :thread | thread isEndOfInput ]
			debugString: '\Z' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:48:39'!
endOfLine
	"An anchor that matches after the last character of a line."

	^ endOfLine ifNil: [
		endOfLine := self
			predicate: [ :thread | thread isEndOfLine ]
			debugString: '$' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:48:54'!
endOfWord
	"An anchor that matches after the last character of a word."

	^ endOfWord ifNil: [
		endOfWord := self
			predicate: [ :thread | thread isEndOfWord ]
			debugString: '\>' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 06:19:09'!
fromCharacter: aCharacter

	aCharacter = $$	ifTrue: [ ^ self endOfLine ].
	aCharacter = $<	ifTrue: [ ^ self beginningOfWord ].
	aCharacter = $>	ifTrue: [ ^ self endOfWord ].
	aCharacter = $A	ifTrue: [ ^ self beginningOfInput ].
	aCharacter = $B	ifTrue: [ ^ self notWordBoundary ].
	aCharacter = $Z	ifTrue: [ ^ self endOfInput ].
	aCharacter = $^	ifTrue: [ ^ self beginningOfLine ].
	aCharacter = $b	ifTrue: [ ^ self wordBoundary ].
	^ nil! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:49:12'!
notWordBoundary
	"An anchor that matches anywhere except before the first character of a word or after the last character of a word."

	^ notWordBoundary ifNil: [
		notWordBoundary := self
			predicate: [ :thread | thread notWordBoundary ]
			debugString: '\B' ]! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:37:16'!
predicate: aUnaryBlock debugString: aString
	"An anchor that asserts the given predicate."

	^ self new
		setPredicate: aUnaryBlock
		debugString: aString! !

!ReAnchor class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 05:50:10'!
wordBoundary
	"An anchor that matches before the first character of a word or after the last character of a word."

	^ wordBoundary ifNil: [
		wordBoundary := self
			predicate: [ :thread | thread isWordBoundary ]
			debugString: '\b' ]! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:46:00'!
& anotherClass

	^ ReIntersectionClass
		intersection: self
		with: anotherClass! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 11/21/2024 07:54:36'!
- anotherClass

	^ ReDifferenceClass
		minuend: self
		subtrahend: anotherClass! !

!ReCharacterClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:46:04'!
| anotherClass

	^ ReUnionClass
		union: self
		with: anotherClass! !

!ReCharacterClass methodsFor: 'converting' stamp: 'ess 11/16/2024 09:50:38'!
complement

	^ ReComplementClass complement: self! !

!ReCharacterClass methodsFor: 'converting' stamp: 'ess 6/2/2025 07:45:42'!
not
	"Deprecated"

	^ self complement! !

!ReCharacterClass methodsFor: 'testing' stamp: 'ess 11/21/2024 07:55:32'!
includes: aCharacter

	^ self subclassResponsibility! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
character: aCharacter

	^ ReEnumeratedClass
		with: aCharacter! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
character: aCharacter flags: regexpFlags

	^ ReEnumeratedClass
		character: aCharacter
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
codepoint: aCodepoint

	^ ReEnumeratedClass
		codepoint: aCodepoint! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:31:06'!
codepoint: aCodepoint flags: regexpFlags

	^ ReEnumeratedClass
		codepoint: aCodepoint
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
decimal: regexpFlags
	"`\d` Matches any decimal digit (not just [0-9])."

	^ ReBitmapClass
		decimal: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
empty

	^ ReEnumeratedClass
		empty! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:31:23'!
empty: regexpFlags

	^ ReEnumeratedClass
		empty: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
from: startCharacter to: endCharacter

	^ ReEnumeratedClass
		from: startCharacter
		to: endCharacter! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:31:44'!
from: startCharacter to: endCharacter flags: regexpFlags

	^ ReEnumeratedClass
		from: startCharacter
		to: endCharacter
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
horizontalWhitespace: regexpFlags
	"`\h` Matches any horizontal whitespace, i.e., space separators and horizontal tab."

	^ ReBitmapClass
		horizontalWhitespace: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 5/29/2025 10:38:47'!
namedClass: aCharacter flags: regexpFlags

	aCharacter = $d	ifTrue: [ ^ self decimal: regexpFlags ].
	aCharacter = $h	ifTrue: [ ^ self horizontalWhitespace: regexpFlags ].
	aCharacter = $s	ifTrue: [ ^ self space: regexpFlags ].
	aCharacter = $v	ifTrue: [ ^ self verticalWhitespace: regexpFlags ].
	aCharacter = $w	ifTrue: [ ^ self word ].
	aCharacter = $D	ifTrue: [ ^ (self decimal: regexpFlags) complement ].
	aCharacter = $H	ifTrue: [ ^ (self horizontalWhitespace: regexpFlags) complement ].
	aCharacter = $S	ifTrue: [ ^ (self space: regexpFlags) complement ].
	aCharacter = $V	ifTrue: [ ^ (self verticalWhitespace: regexpFlags) complement ].
	aCharacter = $W	ifTrue: [ ^ self word complement ].
	^ nil! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:49:35'!
posixClass: className flags: regexpFlags

	^ RePredicateClass
		posixClass: className
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:49:51'!
predicate: propertyBlock

	^ RePredicateClass
		predicate: propertyBlock! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:50:02'!
satisfies: propertyBlock

	^ self predicate: propertyBlock! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
space: regexpFlags
	"`\s` Matches any whitespace or line terminator character."

	^ ReBitmapClass
		space: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
unicodeProperty: propertyName equalTo: propertyValue flags: regexpFlags

	^ ReBitmapClass
		unicodeProperty: propertyName
		equalTo: propertyValue
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
unicodeProperty: propertyName flags: regexpFlags

	^ ReBitmapClass
		unicodeProperty: propertyName
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
verticalWhitespace: regexpFlags
	"`\v` Matches any vertical whitespace."

	^ ReBitmapClass
		verticalWhitespace: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:50:49'!
wildcard: regexpFlags
	"Match any character except LF in multi-line mode, but match any character *including* LF in single-line mode."

	^ RePredicateClass
		wildcard: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
with: character1

	^ ReEnumeratedClass
		with: character1! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:32:01'!
with: character1 flags: regexpFlags

	^ ReEnumeratedClass
		with: character1
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:05:20'!
with: character1 with: character2

	^ ReEnumeratedClass
		with: character1
		with: character2! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:32:18'!
with: character1 with: character2 flags: regexpFlags

	^ ReEnumeratedClass
		with: character1
		with: character2
		flags: regexpFlags! !

!ReCharacterClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:39:11'!
word
	"`\w` matches any word character: alphanumeric, connector punctuation, or marks."

	^ ReBitmapClass word! !

!ReBitmapClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:40:51'!
& anotherClass

	self species == anotherClass species ifTrue: [
		^ self species
			bitmap: bitmap & anotherClass bitmap ].
	^ super & anotherClass! !

!ReBitmapClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:41:08'!
- anotherClass

	self species == anotherClass species ifTrue: [
		^ self species
			bitmap: bitmap - anotherClass bitmap ].
	^ super - anotherClass! !

!ReBitmapClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:41:26'!
| anotherClass

	self species == anotherClass species ifTrue: [
		^ self species
			bitmap: bitmap | anotherClass bitmap ].
	^ super | anotherClass! !

!ReBitmapClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:40:15'!
bitmap

	^ bitmap! !

!ReBitmapClass methodsFor: 'testing' stamp: 'ess 6/2/2025 07:40:05'!
includes: aCharacter

	^ bitmap includes: aCharacter codePoint! !

!ReBitmapClass methodsFor: 'private' stamp: 'ess 6/2/2025 07:39:58'!
setBitmap: aBitmap

	bitmap := aBitmap.
	^ self! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:41:55'!
bitmap: aBitmap

	^ self new
		setBitmap: aBitmap! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:44:18'!
blank
	"Space separators along with good ol' horizontal tab (which is classified as a control character)."
	
	blank ifNil: [
		blank := Unicode generalCategory: #Space_Separator.
		blank add: Character tab codePoint ].
	^ blank! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:43:16'!
decimal: regexpFlags
	"`\d` Matches any decimal digit."
	"This is not just [0-9], but also the equivalent in every writing system.  As of Unicode 16.0, there are 76 variations on this theme, totaling 760 characters.  Note that this does not include all numbers, or even all digits, only those used in a decimal radix system."
	
	decimal ifNil: [
		decimal := self bitmap: (Unicode generalCategory: #Decimal_Number) ].
	^ decimal! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:43:31'!
horizontalWhitespace: regexpFlags
	"`\h` Matches any horizontal whitespace."
	
	^ self bitmap: self blank! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:44:06'!
space: regexpFlags
	"`\s` Matches any whitespace or line terminator character."
	"This is the union of all characters in the `Space_Separator` category and all characters having the `White_Space` property.  This includes various line terminators and paragraph separators but excludes ZERO WIDTH NO-BREAK SPACE."

	| spaceSeparator whiteSpace |
	space ifNil: [
		spaceSeparator := Unicode generalCategory: #Space_Separator.
		whiteSpace := Unicode property: #White_Space.	
		space := self bitmap: spaceSeparator | whiteSpace ].
	^ space! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 12/6/2024 15:44:53'!
unicodeProperty: propertyName equalTo: propertyValue flags: regexpFlags
! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:44:36'!
unicodeProperty: propertyName flags: regexpFlags

	^ self bitmap: (Unicode generalCategory: propertyName)! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 07:44:44'!
verticalWhitespace: regexpFlags
	"`\v` Matches any vertical whitespace."

	^ self bitmap: (Unicode property: #White_Space) - self blank! !

!ReBitmapClass class methodsFor: 'as yet unclassified' stamp: 'ess 5/29/2025 09:58:49'!
word
	"`\w` matches any 'word' character."
	"Here, a word character is alphanumeric, connector punctuation (e.g., '_'), or a mark."

	| letter number connector mark |
	word ifNil: [
		letter := Unicode generalCategory: #Letter.
		number := Unicode generalCategory: #Number.
		connector := Unicode generalCategory: #Connector_Punctuation.
		mark := Unicode generalCategory: #Mark.
		word := self bitmap: letter | number | connector | mark ].
	^ word! !

!ReComplementClass methodsFor: 'converting' stamp: 'ess 11/9/2024 08:05:22'!
complement

	^ complement! !

!ReComplementClass methodsFor: 'printing' stamp: 'ess 6/2/2025 10:15:19'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPut: $^;
		print: complement;
		nextPut: $)! !

!ReComplementClass methodsFor: 'testing' stamp: 'ess 11/9/2024 08:05:47'!
includes: aCharacter

	^ (complement includes: aCharacter) not! !

!ReComplementClass methodsFor: 'private' stamp: 'ess 11/9/2024 08:07:40'!
setComplement: aCharacterClass

	complement := aCharacterClass.
	^ self! !

!ReComplementClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:33:20'!
complement: aCharacterClass

	^ self new
		setComplement: aCharacterClass! !

!ReDifferenceClass methodsFor: 'printing' stamp: 'ess 6/2/2025 10:14:03'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: minuend;
		nextPutAll: '--';
		print: subtrahend;
		nextPut: $)! !

!ReDifferenceClass methodsFor: 'testing' stamp: 'ess 11/21/2024 07:46:33'!
includes: aCharacter

	^ (minuend includes: aCharacter)
		and: [ (subtrahend includes: aCharacter) not ]! !

!ReDifferenceClass methodsFor: 'private' stamp: 'ess 11/21/2024 07:47:29'!
setMinuend: firstClass subtrahend: secondClass

	minuend := firstClass.
	subtrahend := secondClass.
	^ self! !

!ReDifferenceClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:36:20'!
minuend: firstClass subtrahend: secondClass

	^ self new
		setMinuend: firstClass
		subtrahend: secondClass! !

!ReEnumeratedClass methodsFor: 'adding' stamp: 'ess 6/2/2025 07:58:28'!
add: aCharacter

	characters add: aCharacter! !

!ReEnumeratedClass methodsFor: 'adding' stamp: 'ess 6/2/2025 08:15:11'!
addAll: aCollection

	aCollection do: [ :each |
		self add: each ]! !

!ReEnumeratedClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 08:42:58'!
& anotherClass

	| result |
	self species == anotherClass species ifFalse: [
		^ super & anotherClass ].
	result := self species empty.
	characters do: [ :each |
		(anotherClass includes: each) ifTrue: [
			result add: each ] ].
	^ result! !

!ReEnumeratedClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 08:45:34'!
- anotherClass

	| result |
	self species == anotherClass species ifFalse: [
		^ super - anotherClass ].
	result := self species empty.
	characters do: [ :each |
		(anotherClass includes: each) ifFalse: [
			result add: each ] ].
	^ result! !

!ReEnumeratedClass methodsFor: 'as yet unclassified' stamp: 'ess 6/2/2025 08:44:08'!
| anotherClass

	| result |
	self species == anotherClass species ifFalse: [
		^ super | anotherClass ].
	result := anotherClass copy.
	characters do: [ :each |
		result add: each ].
	^ result! !

!ReEnumeratedClass methodsFor: 'initialization' stamp: 'ess 6/2/2025 07:59:00'!
initialize

	super initialize.
	characters := Set new! !

!ReEnumeratedClass methodsFor: 'initialization' stamp: 'ess 6/2/2025 08:44:21'!
postCopy

	characters := characters copy.
	^ self! !

!ReEnumeratedClass methodsFor: 'printing' stamp: 'ess 6/2/2025 10:12:44'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: characters;
		nextPut: $)! !

!ReEnumeratedClass methodsFor: 'testing' stamp: 'ess 11/17/2024 12:25:57'!
includes: aCharacter

	^ characters includes: aCharacter! !

!ReEnumeratedClass methodsFor: 'testing' stamp: 'ess 11/9/2024 08:54:54'!
isEmpty

	^ characters isEmpty! !

!ReEnumeratedClass methodsFor: 'testing' stamp: 'ess 11/9/2024 08:55:00'!
notEmpty

	^ characters notEmpty! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:29:47'!
character: aCharacter

	^ self
		with: aCharacter! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:24:24'!
character: aCharacter flags: regexpFlags

	^ self
		with: aCharacter
		flags: regexpFlags! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:30:13'!
codepoint: aCodepoint

	^ self
		with: (Character codePoint: aCodepoint)! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:24:04'!
codepoint: aCodepoint flags: regexpFlags

	^ self
		with: (Character codePoint: aCodepoint)
		flags: regexpFlags! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:28:01'!
empty

	^ self new! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:46:45'!
empty: regexpFlags

	| class |
	class := regexpFlags ignoreCase
		ifTrue: [ ReCaseInsensitiveEnumeratedClass ]
		ifFalse: [ ReEnumeratedClass ].
	^ class new! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:29:04'!
from: startCharacter to: endCharacter

	^ self empty
		addAll: (startCharacter to: endCharacter);
		yourself! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:21:39'!
from: startCharacter to: endCharacter flags: regexpFlags

	^ (self empty: regexpFlags)
		addAll: (startCharacter to: endCharacter);
		yourself! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:28:41'!
with: character1

	^ self empty
		add: character1;
		yourself! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:22:30'!
with: character1 flags: regexpFlags

	^ (self empty: regexpFlags)
		add: character1;
		yourself! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:28:24'!
with: character1 with: character2

	^ self empty
		add: character1;
		add: character2;
		yourself! !

!ReEnumeratedClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:22:45'!
with: character1 with: character2 flags: regexpFlags

	^ (self empty: regexpFlags)
		add: character1;
		add: character2;
		yourself! !

!ReCaseInsensitiveEnumeratedClass methodsFor: 'adding' stamp: 'ess 6/2/2025 08:14:43'!
add: aCharacter

	characters add: aCharacter caseFold! !

!ReCaseInsensitiveEnumeratedClass methodsFor: 'testing' stamp: 'ess 6/2/2025 08:15:31'!
includes: aCharacter

	^ characters includes: aCharacter caseFold! !

!ReIntersectionClass methodsFor: 'printing' stamp: 'ess 6/2/2025 10:15:58'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: operand1;
		nextPutAll: '&&';
		print: operand2;
		nextPut: $)! !

!ReIntersectionClass methodsFor: 'testing' stamp: 'ess 11/21/2024 07:49:59'!
includes: aCharacter

	^ (operand1 includes: aCharacter)
		and: [ operand2 includes: aCharacter ]! !

!ReIntersectionClass methodsFor: 'private' stamp: 'ess 11/21/2024 07:50:30'!
setOperands: op1 and: op2

	operand1 := op1.
	operand2 := op2.
	^ self! !

!ReIntersectionClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:35:19'!
intersection: op1 with: op2

	^ self new
		setOperands: op1
		and: op2! !

!RePredicateClass methodsFor: 'testing' stamp: 'ess 6/2/2025 07:26:17'!
includes: aCharacter

	^ predicate value: aCharacter! !

!RePredicateClass methodsFor: 'private' stamp: 'ess 6/2/2025 07:28:00'!
setPredicate: aUnaryBlock

	predicate := aUnaryBlock.
	^ self! !

!RePredicateClass class methodsFor: 'constants' stamp: 'ess 6/2/2025 07:29:24'!
posixClasses

	^`{	'alnum'	-> #isPosixAlnum.
		'alpha'	-> #isPosixAlpha.
		'blank'	-> #isPosixBlank.
		'cntrl'	-> #isPosixCntrl.
		'digit'	-> #isPosixDigit.
		'graph'	-> #isPosixGraph.
		'lower'	-> #isPosixLower.
		'print'	-> #isPosixPrint.
		'punct'	-> #isPosixPunct.
		'space'	-> #isPosixSpace.
		'upper'	-> #isPosixUpper.
		'xdigit'	-> #isPosixXDigit } asDictionary`! !

!RePredicateClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:31:08'!
posixClass: className flags: regexpFlags

	| predicate |
	predicate := self posixClasses
		at: className
		ifAbsent: [ nil ].
	^ predicate ifNotNil: [
		self predicate: predicate ]! !

!RePredicateClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:29:57'!
predicate: propertyBlock

	^self new
		setPredicate: propertyBlock! !

!RePredicateClass class methodsFor: 'instance creation' stamp: 'ess 6/3/2025 15:22:46'!
wildcard: regexpFlags
	"Match any character except LF in multi-line mode, but match any character _including_ LF in single-line mode."

	| predicate |
	predicate := regexpFlags multiLine
		ifTrue: [
			[ :c | c ~= Character lf ] ]
		 ifFalse: [
			#isCharacter ].
	^ self predicate: predicate! !

!RePredicateClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:29:53'!
word: regexpFlags

	^self predicate: #isPosixWord! !

!ReUnionClass methodsFor: 'printing' stamp: 'ess 6/2/2025 10:16:14'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: operand1;
		nextPut: $,;
		print: operand2;
		nextPut: $)! !

!ReUnionClass methodsFor: 'testing' stamp: 'ess 11/21/2024 07:51:31'!
includes: aCharacter

	^ (operand1 includes: aCharacter)
		or: [ operand2 includes: aCharacter ]! !

!ReUnionClass methodsFor: 'private' stamp: 'ess 11/21/2024 07:51:23'!
setOperands: op1 and: op2

	operand1 := op1.
	operand2 := op2.
	^ self! !

!ReUnionClass class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:34:05'!
union: op1 with: op2

	^ self new
		setOperands: op1
		and: op2! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 5/29/2025 08:08:07'!
ignoreCase

	^ ignoreCase! !

!ReFlags methodsFor: 'accessing' stamp: 'ess 5/29/2025 08:08:15'!
multiLine

	^ multiLine! !

!ReFlags methodsFor: 'private' stamp: 'ess 5/30/2025 15:21:25'!
setIgnoreCase: boolean1 multiLine: boolean2

	ignoreCase := boolean1 ifNil: [ false ].
	multiLine := boolean2 ifNil: [ false ].
	^ self! !

!ReFlags class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:25:03'!
default

	default ifNil: [
		default := self
			ignoreCase: nil
			multiLine: nil ].
	^ default! !

!ReFlags class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 15:20:53'!
ignoreCase: ignoreCase

	^ self
		ignoreCase: ignoreCase
		multiLine: nil! !

!ReFlags class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 15:20:32'!
ignoreCase: ignoreCase multiLine: multiLine

	^ self new
		setIgnoreCase: ignoreCase
		multiLine: multiLine! !

!ReFlags class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 15:20:58'!
multiLine: multiLine

	^ self
		ignoreCase: nil
		multiLine: multiLine! !

!ReInstruction methodsFor: 'evaluating' stamp: 'ess 5/30/2025 16:15:54'!
execute: aThread
	"Override to do something.  Default is no-op."

	^ self! !

!ReInstruction methodsFor: 'testing' stamp: 'ess 5/30/2025 16:16:16'!
waitsForNextCharacter
	"Does this instruction need a character from the input in order to proceed?"
	"Most instructions can run immediately, as soon as they are fetched, because their behavior is independent of the character being matched.  These instructions run 'in between' the characters.  The character matching instructions are an obvious exception.
	The main loop of the VM begins each iteration by executing a waiting character match instructuction.  If the match succeeds, the VM then goes on to execute everything it can until it hits an instruction that needs to test the next character."

	^ false! !

!ReAnchorInstruction methodsFor: 'evaluating' stamp: 'ess 5/29/2025 11:08:47'!
execute: aThread
	"Progress aThread only when the anchor condition is satisfied."

	(anchor value: aThread) ifTrue: [
		aThread step ]! !

!ReAnchorInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:49:14'!
printOn: aStream

	aStream
		nextPutAll: 'assert ';
		print: anchor! !

!ReAnchorInstruction methodsFor: 'private' stamp: 'ess 11/9/2024 13:08:22'!
setAnchor: anAnchor

	anchor := anAnchor.
	^ self! !

!ReAnchorInstruction class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:08:46'!
anchor: anAnchor

	^ self new
		setAnchor: anAnchor! !

!ReCharacterInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 08:45:43'!
execute: aThread
	"Progress aThread when we match the current character.  Otherwise we let the thread die."

	(characterClass includes: aThread character) ifTrue: [
		aThread step ]! !

!ReCharacterInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:48:46'!
printOn: aStream

	aStream
		nextPutAll: 'evaluate ';
		print: characterClass! !

!ReCharacterInstruction methodsFor: 'testing' stamp: 'ess 11/9/2024 18:50:11'!
waitsForNextCharacter
	"Don't execute in prefetch.  This instruction needs to evaluate the next character of the input in order to proceed."

	^ true! !

!ReCharacterInstruction methodsFor: 'private' stamp: 'ess 11/9/2024 11:25:27'!
setClass: aCharacterClass

	characterClass := aCharacterClass.
	^ self! !

!ReCharacterInstruction class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:53:05'!
characterClass: aCharacterClass
	"Answer an instance that progresses when the current character matches aCharacterClass."

	^ self new
		setClass: aCharacterClass! !

!ReJumpInstruction methodsFor: 'accessing' stamp: 'ess 6/3/2025 15:15:30'!
target: aLabel

	target := aLabel! !

!ReJumpInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 08:45:10'!
execute: aThread

	aThread jump: target! !

!ReJumpInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:52:11'!
printOn: aStream

	aStream
		nextPutAll: '#jump: ';
		print: target! !

!ReJumpInstruction methodsFor: 'private' stamp: 'ess 11/7/2024 05:39:27'!
setJump: aTarget

	target := aTarget.
	^ self! !

!ReJumpInstruction class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 10:27:48'!
jump: jumpTarget

	^ self new
		setJump: jumpTarget! !

!ReBranchInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 10:13:21'!
execute: aThread

	aThread
		jump: target
		andBranch: target1! !

!ReBranchInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:52:19'!
printOn: aStream

	aStream
		nextPutAll: '#jump: ';
		print: target;
		nextPutAll: ' andBranch: ';
		print: target1! !

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

!ReMatchInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 08:46:28'!
execute: aThread

	aThread match! !

!ReMatchInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:52:29'!
printOn: aStream

	aStream
		nextPutAll: '#match'! !

!ReNoopInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:45:38'!
printOn: aStream

	aStream
		nextPutAll: 'noop'! !

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

!ReSaveEndInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 08:05:54'!
execute: aThread

	aThread
		saveEnd: slot;
		step! !

!ReSaveEndInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:52:44'!
printOn: aStream

	aStream
		nextPutAll: '#saveEnd: ';
		print: slot! !

!ReSaveStartInstruction methodsFor: 'evaluating' stamp: 'ess 6/4/2025 08:05:37'!
execute: aThread

	aThread
		saveStart: slot;
		step! !

!ReSaveStartInstruction methodsFor: 'printing' stamp: 'ess 6/4/2025 07:52:48'!
printOn: aStream

	aStream
		nextPutAll: '#saveStart: ';
		print: slot! !

!ReLabel methodsFor: 'accessing' stamp: 'ess 11/6/2024 06:50:31'!
counter

	^ counter! !

!ReLabel methodsFor: 'accessing' stamp: 'ess 11/6/2024 06:50:55'!
counter: aLocation

	counter := aLocation! !

!ReLabel methodsFor: 'printing' stamp: 'ess 6/4/2025 07:50:01'!
printOn: aStream

	aStream
		print: counter! !

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

!ReAnchorNode methodsFor: 'printing' stamp: 'ess 6/2/2025 10:19:06'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: anchor;
		nextPut: $)! !

!ReAnchorNode methodsFor: 'private' stamp: 'ess 11/9/2024 13:06:29'!
setAnchor: anAnchor

	anchor := anAnchor.
	^ self! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/9/2024 13:05:15'!
anchor: anAnchor

	^ self new
		setAnchor: anAnchor! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 5/31/2025 09:07:17'!
beginningOfInput

	^ self anchor: ReAnchor beginningOfInput! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:27:25'!
beginningOfLine

	^ self anchor: ReAnchor beginningOfLine! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 5/31/2025 09:08:18'!
beginningOfWord

	^ self anchor: ReAnchor beginningOfWord! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 5/31/2025 09:07:32'!
endOfInput

	^ self anchor: ReAnchor endOfInput! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/17/2024 13:27:36'!
endOfLine

	^ self anchor: ReAnchor endOfLine! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 5/31/2025 09:08:26'!
endOfWord

	^ self anchor: ReAnchor endOfWord! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
notWordBoundary

	^ self anchor: ReAnchor notWordBoundary! !

!ReAnchorNode class methodsFor: 'instance creation' stamp: 'ess 11/16/2024 09:51:03'!
wordBoundary

	^ self anchor: ReAnchor wordBoundary! !

!ReCharacterNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 16:14:22'!
compileTo: aProgram

	aProgram characterClass: characters! !

!ReCharacterNode methodsFor: 'printing' stamp: 'ess 6/2/2025 10:19:17'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: characters;
		nextPut: $)! !

!ReCharacterNode methodsFor: 'private' stamp: 'ess 11/7/2024 02:16:47'!
setCharacterClass: aCharacterClass

	characters := aCharacterClass.
	^ self! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:32:46'!
character: aCharacter

	^ self characterClass:
		(ReCharacterClass
			character: aCharacter)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:04:36'!
character: aCharacter flags: regexpFlags

	^ self characterClass:
		(ReCharacterClass
			character: aCharacter
			flags: regexpFlags)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 11/7/2024 02:16:13'!
characterClass: aCharacterClass

	^ self new
		setCharacterClass: aCharacterClass! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:51:58'!
codepoint: aCodepoint

	^ self characterClass:
		(ReCharacterClass codepoint: aCodepoint)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 08:33:04'!
codepoint: aCodepoint flags: regexpFlags

	^ self characterClass:
		(ReCharacterClass
			codepoint: aCodepoint
			flags: regexpFlags)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 5/31/2025 06:59:21'!
generalCategory: unicodeGeneralCategoryName

	^ self characterClass:
		(ReCharacterClass generalCategory: unicodeGeneralCategoryName)! !

!ReCharacterNode class methodsFor: 'instance creation' stamp: 'ess 6/2/2025 07:52:06'!
wildcard: regexpFlags
	"Match any character except LF in multi-line mode, but match any character *including* LF in single-line mode."

	^ self characterClass:
		(ReCharacterClass wildcard: regexpFlags)! !

!ReGroupNode methodsFor: 'as yet unclassified' stamp: 'ess 6/10/2025 14:08:12'!
compileTo: aProgram

	slot ifNil: [
		^ aProgram compileNode: node ].
	aProgram
		saveStart: slot;
		compileNode: node;
		saveEnd: slot! !

!ReGroupNode methodsFor: 'printing' stamp: 'ess 6/2/2025 10:19:37'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: slot;
		nextPut: $,;
		print: node;
		nextPut: $)! !

!ReGroupNode methodsFor: 'private' stamp: 'ess 11/6/2024 12:12:02'!
setNode: aNode slot: aSlotIndex

	node := aNode.
	slot := aSlotIndex.
	^ self! !

!ReGroupNode class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 12:11:35'!
with: aNode slot: aSlotIndex

	^ self new
		setNode: aNode
		slot: aSlotIndex! !

!ReNullNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:12:05'!
compileTo: aProgram

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

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:13:12'!
compileBranchTo: aProgram match: matchLabel skip: skipLabel

	self isGreedy
		ifTrue: [
			aProgram
				jump: matchLabel
				andBranch: skipLabel ]
		ifFalse: [
			aProgram
				jump: skipLabel
				andBranch: matchLabel ]! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:13:43'!
compileOptionalTo: aProgram

	max ifNil: [
		^ self compileUnboundedTo: aProgram ].
	(max - min)
		timesRepeat: [
			| matchLabel skipLabel |
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

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:13:50'!
compileRequiredTo: aProgram

	min timesRepeat: [
		node compileTo: aProgram ]! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 11/6/2024 10:15:41'!
compileTo: aProgram

	self
		compileRequiredTo: aProgram;
		compileOptionalTo: aProgram! !

!ReRepetitionNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:14:01'!
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

!ReRepetitionNode methodsFor: 'initialization' stamp: 'ess 11/9/2024 09:13:19'!
initialize

	min := 0.
	max := nil.
	greedy := true.
	possessive := false! !

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

!ReSequenceNode methodsFor: 'printing' stamp: 'ess 6/2/2025 10:20:47'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: children;
		nextPut: $)! !

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

!ReAlternationNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:15:21'!
compileTo: aProgram

	| alternativesDone thisAlternative nextAlternative|
	alternativesDone := self newLabel.
	children allButLast do: [ :each |
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

!ReConcatenationNode methodsFor: 'as yet unclassified' stamp: 'ess 5/30/2025 16:15:36'!
compileTo: aProgram

	children do: [ :each |
		each compileTo: aProgram ]! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:49:37'!
character
	"Answer the current input character, may be nil."
	"All threads in a process execute concurrently on each input character.  The current character may be nil before execution reaches the first character of the input or after execution has passed the last character of the input."

	^ character! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:59:27'!
inputAt: anIndex
	"Answer the indexed character from the input."

	^ input at: anIndex! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:59:06'!
instructionAt: aProgramCounter
	"Answer the indexed instruction."

	^ program instructionAt: aProgramCounter! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 6/4/2025 05:06:27'!
next

	^ input
		at: position + 1
		ifAbsent: [ nil ]! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:50:57'!
position
	"Index of current character, from 0 (before the first character) to size + 1 (after the last character)."
	"See also #character."

	^ position! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 6/4/2025 14:47:48'!
ready
	"Answer an ordered collection of all threads ready for execution."

	| ready |
	ready := scheduled.
	scheduled := OrderedCollection new.
	ready do: [ :each |
		each ready ].
	^ ready! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:52:18'!
result
	"Answer the current (longest) match result."

	^ result ifNotNil: [
		result on: input ]! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 6/11/2025 11:37:45'!
result: aMatchResult
	"Set the latest match result."
	"Threads have priority and execute in priority order.  At each process step (i.e., each input character), the first thread to set a match result will be the highest-priority running thread, meaning that any other running threads will not impact the final match and can be terminated.
	Another thread can set a new result at a later process step to yield a longer match."	

	(result notNil
		and: [ result start < aMatchResult start
				or: [ aMatchResult end <= result end ] ])
		ifTrue: [
		^ self ].
	result := aMatchResult".
	running := OrderedCollection new"! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:57:54'!
size
	"The number of characters in the string being matched."

	input ifNil: [ ^ 0 ].
	^ input size! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:57:38'!
slotsNeeded
	"Answer the number of save-registers needed for each thread."

	^ program slotsNeeded! !

!ReProcess methodsFor: 'accessing' stamp: 'ess 6/4/2025 05:10:49'!
wordClass

	^ ReCharacterClass word! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 6/4/2025 14:48:56'!
execute: aString startingAt: startIndex endingAt: endIndex
	"Execute the program against the inclusive substring [startIndex, endIndex] of aString, answering the longest match."
	"Execution walks sequentially through the characters of the input, evaluating all threads against each successive character.
	For each character:
		- all scheduled threads are moved to running,
		- running threads are executed in priority order,
		- each running thread can potentially set a match result, and
		- each running thread can schedule itself or one-or-more new threads to run on the next character.
	If a thread does not schedule itself or a successor to run on the next character, it terminates.
	The result will be the last successful match made after all threads have terminated."

	| start end thread |
	start := (startIndex ifNil: [ 1 ]) max: 1.
	end := (endIndex ifNil: [ aString size ]) min: aString size.
	input := aString.
	position := start - 1.
	character := nil.
	scheduled := OrderedCollection new.
	(ReThread process: self)
		start.
	[ position < end ] whileTrue: [
		position := position + 1.
		character := input at: position.
		running := self ready.
		running isEmpty ifTrue: [
			^ self result ].
		[ running notEmpty ] whileTrue: [
			thread := running removeFirst.
			thread execute ] ].
	^ self result! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 6/4/2025 06:40:45'!
find: aString startingAt: startIndex endingAt: endIndex

	program beFind.
	^ self
		execute: aString
		startingAt: startIndex
		endingAt: endIndex! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 6/4/2025 06:40:45'!
match: aString startingAt: startIndex endingAt: endIndex

	program beMatch.
	^ self
		execute: aString
		startingAt: startIndex
		endingAt: endIndex! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 6/4/2025 12:07:52'!
run: aThread
	"Schedule aThread to run against the current character of the input."

	(running includes: aThread) ifFalse: [
		running addLast: aThread ]! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 5/30/2025 17:06:42'!
schedule: aThread
	"Schedule aThread to run against the next character of the input."

	(scheduled includes: aThread) ifFalse: [
		scheduled addLast: aThread ]! !

!ReProcess methodsFor: 'evaluating' stamp: 'ess 6/4/2025 11:09:10'!
spawn: aThread start: programCounter

	aThread fetch: programCounter.
	self run: aThread! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 05:19:22'!
isBeginningOfInput
	"True before we read the first character of the input."

	^ position = 0! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 12:16:12'!
isBeginningOfLine
	"True before we read the first character of a line."

	^ (self isBeginningOfInput
		or: [ character = Character lf ])
		or: [ character = Character cr
				and: [ self next ~= Character lf ] ]! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 14:40:50'!
isBeginningOfWord
	"True before we read the first character of a word."

	| wordClass next |
	wordClass := self wordClass.
	next := self next.
	^ (next notNil
		and: [ wordClass includes: next ])
		and: [ self isBeginningOfLine
				or: [ character notNil
						and: [ (wordClass includes: character) not ] ] ]! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 05:19:47'!
isEndOfInput
	"True after we read the last character of the input."

	^ position = input size! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 12:24:18'!
isEndOfLine
	"True after we read the last character of a line."

	| next |
	self isEndOfInput ifTrue: [
		^ true ].
	next := self next.
	next ifNil: [
		^ true ].
	character ifNil: [
		^ false ].
	^ next = Character cr
		or: [ next = Character lf
				and: [ character ~= Character cr ] ]! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 12:34:38'!
isEndOfWord
	"True after we read the last character of a word."

	| wordClass |
	wordClass := self wordClass.
	^ (character notNil
		and: [ wordClass includes: character ])
		and: [ self isEndOfLine
				or: [ (wordClass includes: self next) not ] ]! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 05:31:13'!
isWordBoundary
	"True if either the beginning or the end of a word."

	^ self isBeginningOfWord
		or: [ self isEndOfWord ]! !

!ReProcess methodsFor: 'testing' stamp: 'ess 6/4/2025 14:40:44'!
notWordBoundary
	"True if neither the beginning nor the end of a word."

	^ self isWordBoundary not! !

!ReProcess methodsFor: 'private' stamp: 'ess 11/7/2024 05:50:30'!
setProgram: aProgram

	program := aProgram.
	^ self! !

!ReProcess class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 16:22:14'!
program: aProgram
	"Create a new process to execute the ReProgram."

	^ self new
		setProgram: aProgram! !

!ReProgram methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:32:26'!
instructionAt: anIndex
	"Answer the indexed instruction or a no-op if anIndex is out-of-bounds."

	^ instructions
		at: anIndex
		ifAbsent: [ ReNoopInstruction new ]! !

!ReProgram methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:30:40'!
slotsNeeded
	"Answer the number of registers needed to execute the program."

	^ slotsNeeded! !

!ReProgram methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:30:54'!
slotsNeeded: totalSlots
	"Set the number of registers needed to execute the program."

	slotsNeeded := totalSlots! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 6/3/2025 15:14:26'!
beFind

	(instructions at: 1)
		target: findLabel! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 6/3/2025 15:14:18'!
beMatch

	(instructions at: 1)
		target: matchLabel! !

!ReProgram methodsFor: 'as yet unclassified' stamp: 'ess 6/4/2025 10:19:48'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: instructions;
		nextPut: $)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:33:08'!
addInstruction: anInstruction
	"Append an instruction to the program being compiled."

	instructions addLast: anInstruction! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:24:55'!
anchor: anAnchor
	"Compile an anchor instruction to the program."

	self addInstruction:
		(ReAnchorInstruction anchor: anAnchor)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 6/2/2025 07:52:46'!
characterClass: aCharacterClass
	"Compile a character class (matching) instruction to the program."

	self addInstruction:
		(ReCharacterInstruction characterClass: aCharacterClass)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:29:44'!
compileNode: aSyntaxNode
	"Compile a syntax node as a sequence of instructions."

	aSyntaxNode compileTo: self! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 6/3/2025 15:13:43'!
compileProgram: aSyntaxNode
	"We prefix the regular-expression program with '.*?' (match anything, non-greedy) to facilitate 'find' operations.  However, because we're not always executing 'find', we prefix that with a jump to the main body of the match.
	Normal execution will perform the match operation.  Change the destination of the first instruction to perform a search."

	| scanLabel wildcard |
	findLabel := ReLabel new.
	matchLabel := ReLabel new.
	scanLabel := ReLabel new.
	wildcard := ReCharacterClass
		wildcard: ReFlags default.  "Match any character, including LF."
	self jump: matchLabel.
	self label: findLabel.
	self
		jump: matchLabel
		andBranch: scanLabel.
	self label: scanLabel.
	self characterClass: wildcard.
	self jump: findLabel.
	self label: matchLabel.
	self compileNode: aSyntaxNode! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:26:06'!
jump: jumpTarget
	"Compile a jump instruction to the program."

	self addInstruction:
		(ReJumpInstruction jump: jumpTarget)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:26:32'!
jump: priorityTarget andBranch: secondaryTarget
	"Compile a branch instruction to the program."

	self addInstruction:
		(ReBranchInstruction
			jump: priorityTarget
			andBranch: secondaryTarget)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:36:33'!
label: aLabel
	"_Compile_ a label instruction to the program."
	"As labels do not execute, we just update the target of the label to point to the next compiled instruction."

	aLabel counter: instructions size + 1! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:33:47'!
match
	"Compile a match (i.e., success) instruction to the program."

	self addInstruction: ReMatchInstruction new! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:27:32'!
saveEnd: aSlotIndex
	"Compile a save instruction to the program."

	self addInstruction:
		(ReSaveInstruction end: aSlotIndex)! !

!ReProgram methodsFor: 'compiling' stamp: 'ess 5/30/2025 16:27:39'!
saveStart: aSlotIndex
	"Compile a save instruction to the program."

	self addInstruction:
		(ReSaveInstruction start: aSlotIndex)! !

!ReProgram methodsFor: 'initialization' stamp: 'ess 5/30/2025 16:20:42'!
initialize

	super initialize.
	slotsNeeded := 1.
	instructions := OrderedCollection new! !

!ReRegister methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:38:44'!
end
	"Answer the index of the last character (inclusive) stored in this register."

	^ end! !

!ReRegister methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:38:54'!
end: matchEndPosition
	"Set the index of the last character (inclusive) stored in this register."

	end := matchEndPosition! !

!ReRegister methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:38:16'!
start
	"Answer the index of the first character stored in this register."

	^ start! !

!ReRegister methodsFor: 'accessing' stamp: 'ess 5/30/2025 16:38:26'!
start: matchStartPosition
	"Set the index of the first character stored in this register."

	start := matchStartPosition! !

!ReRegister methodsFor: 'evaluating' stamp: 'ess 5/31/2025 02:25:13'!
on: aString
	"Answer the substring saved in this register."

	(start isNil or: [ end isNil ]) ifTrue: [
		^ nil ].
	^ aString
		copyFrom: start
		to: end! !

!ReRegister methodsFor: 'as yet unclassified' stamp: 'ess 6/4/2025 10:15:23'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: start;
		nextPut: $,;
		print: end;
		nextPut: $)! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/7/2024 05:08:37'!
character

	^ process character! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/7/2024 06:17:32'!
counter

	^ counter! !

!ReThread methodsFor: 'accessing' stamp: 'ess 6/4/2025 14:32:31'!
fetch

	self instruction waitsForNextCharacter ifTrue: [
		process schedule: self.
		^ self ].
	(executed includes: counter) ifTrue: [
		^ self ].
	executed add: counter.
	self execute! !

!ReThread methodsFor: 'accessing' stamp: 'ess 6/4/2025 14:30:35'!
fetch: aProgramCounter

	counter := aProgramCounter.
	self fetch! !

!ReThread methodsFor: 'accessing' stamp: 'ess 5/29/2025 09:54:31'!
inputAt: anIndex

	^ process inputAt: anIndex! !

!ReThread methodsFor: 'accessing' stamp: 'ess 6/4/2025 14:28:33'!
instruction

	^ process instructionAt: counter! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:42:56'!
position
	"Position in input of current character."

	^ process position! !

!ReThread methodsFor: 'accessing' stamp: 'ess 6/4/2025 12:07:21'!
shouldSuspend

	^ shouldSuspend! !

!ReThread methodsFor: 'accessing' stamp: 'ess 11/9/2024 11:43:11'!
size
	"Total number of characters in input."

	^ process size! !

!ReThread methodsFor: 'comparing' stamp: 'ess 6/4/2025 12:07:12'!
= aThread

	self == aThread ifTrue: [ ^ true ].
	self species == aThread species ifFalse: [ ^ false ].
	^ counter = aThread counter
		and: [ shouldSuspend = aThread shouldSuspend ]! !

!ReThread methodsFor: 'comparing' stamp: 'ess 6/4/2025 12:07:32'!
hash

	^ (self species hash
		bitXor: counter hash)
		bitXor: shouldSuspend hash! !

!ReThread methodsFor: 'copying' stamp: 'ess 6/4/2025 10:59:20'!
postCopy

	result := result copy.
	^ self! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 5/29/2025 09:51:50'!
execute
	"Carry-out one instruction."
	"Whether or not the thread continues to execute after this is for the instruction to decide.  If the instruction choses not to continue, this thread will silently stop."

	self instruction
		execute: self! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 08:00:08'!
jump: aTarget

	self fetch: aTarget counter! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 5/29/2025 09:52:26'!
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

!ReThread methodsFor: 'evaluating' stamp: 'ess 6/4/2025 06:38:25'!
saveEnd: slotIndex
	"Save the position of the current (last read) character."
	"See discussion at #saveStart:"

	result
		endSlot: slotIndex
		at: process position! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 6/4/2025 10:35:43'!
saveStart: slotIndex
	"Save the position of the _next_ character."
	"In a compiled group expression such as '(abc)', #saveStart: executes before we read the first character of the group, and so needs to record the next position.  Similarly, #saveEnd: executes after we read the last character, so it records the (then) current position.
	An empty group will trigger both #saveStart: and #saveEnd: without advancing the position, yielding `start = end + 1`."

	result
		startSlot: slotIndex
		at: process position + 1! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 6/4/2025 14:30:30'!
start

	self
		ready;
		fetch: 1! !

!ReThread methodsFor: 'evaluating' stamp: 'ess 11/7/2024 07:59:55'!
step

	self fetch: counter + 1! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:27:54'!
isBeginningOfInput
	"True before we read the first character of the input."

	^ process isBeginningOfInput! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:28:09'!
isBeginningOfLine
	"True before we read the first character of a line."

	^ process isBeginningOfLine! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:28:19'!
isBeginningOfWord
	"True before we read the first character of a word."

	^ process isBeginningOfWord! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:28:30'!
isEndOfInput
	"True after we read the last character of the input."

	^ process isEndOfInput! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:28:40'!
isEndOfLine
	"True after we read the last character of a line."

	^ process isEndOfLine! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:28:49'!
isEndOfWord
	"True after we read the last character of a word."

	^ process isEndOfWord! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:31:21'!
isWordBoundary
	"True if either the beginning or the end of a word."

	^ process isWordBoundary
! !

!ReThread methodsFor: 'testing' stamp: 'ess 6/4/2025 05:31:03'!
notWordBoundary
	"True if neither the beginning nor the end of a word."

	^ process notWordBoundary! !

!ReThread methodsFor: 'private' stamp: 'ess 6/4/2025 11:55:37'!
setProcess: aProcess

	process := aProcess.
	executed := Set new.
	result := RegexpMatch
		slotsNeeded: process slotsNeeded.
	^ self! !

!ReThread methodsFor: 'as yet unclassified' stamp: 'ess 6/4/2025 10:23:25'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: counter;
		nextPut: $,;
		print: instruction;
		nextPut: $)! !

!ReThread class methodsFor: 'instance creation' stamp: 'ess 6/4/2025 08:56:52'!
process: aProcess
	"Create a new thread of execution in the process."

	^ self new
		setProcess: aProcess! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 5/31/2025 07:09:56'!
endOfGroup: anIndex

	^ (self registerAt: anIndex)
		end! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:42:18'!
endingAt

	^ endingAt! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 5/31/2025 07:34:44'!
groupAt: anIndex

	string ifNil: [ ^ nil ].
	^ (self registerAt: anIndex)
		on: string! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:35:29'!
groups! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:38:34'!
lastGroup! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 6/2/2025 09:49:36'!
lastIndex

	^ registers
		ifNotNil: [ registers size ]
		ifNil: [ 0 ]! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:35:33'!
namedGroups! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:41:08'!
pattern

	^ pattern! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:41:44'!
pattern: aCompiledPattern

	pattern := aCompiledPattern! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 6/11/2025 11:36:39'!
size

	^ self end - self start + 1! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 5/31/2025 07:10:32'!
spanOfGroup: anIndex

	^ Array
		with: (self startOfGroup: anIndex)
		with: (self endOfGroup: anIndex)! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 5/31/2025 07:10:07'!
startOfGroup: anIndex

	^ (self registerAt: anIndex)
		start! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:42:24'!
startingAt

	^ startingAt! !

!RegexpMatch methodsFor: 'accessing' stamp: 'ess 11/16/2024 09:40:29'!
string

	^ string! !

!RegexpMatch methodsFor: 'copying' stamp: 'ess 5/31/2025 07:02:56'!
postCopy

	register0 := register0 ifNotNil: [ register0 copy ].
	registers := registers ifNotNil: [
		registers collect: [ :each | each copy ] ].
	^ self! !

!RegexpMatch methodsFor: 'evaluating' stamp: 'ess 6/2/2025 09:56:58'!
expand: aTemplateString

	| last escape index group |
	last := self lastIndex.
	escape := false.
	^ String streamContents: [ :stream |
		aTemplateString do: [ :each |
			escape
				ifTrue: [
					escape := false.
					($1 <= each and: [ each <= $9 ])
						ifTrue: [
							index := each digitValue.
							group := (index between: 1 and: last)
								ifTrue: [ self groupAt: index ]
								ifFalse: [ nil ].
							stream nextPutAll: (group ifNil: [ '' ]) ]
						ifFalse: [
							stream nextPut: each ] ]
				ifFalse: [
					each = $\
						ifTrue: [
							escape := true ]
						ifFalse: [
							each = $&
								ifTrue: [
									stream nextPutAll: (self groupAt: 0) ]
								ifFalse: [
									stream nextPut: each ] ] ] ].
		escape ifTrue: [
			stream nextPut: $\ ] ]
! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 6/11/2025 11:36:27'!
end

	^ register0 end! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 12/3/2024 09:05:20'!
endSlot: slotIndex at: matchPosition

	(self registerAt: slotIndex)
		end: matchPosition! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:40:21'!
on: aString

	string := aString! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 12/3/2024 09:05:20'!
registerAt: anIndex

	^anIndex isZero
		ifTrue: [register0 ifNil: [register0 := ReRegister new]]
		ifFalse: [(registers at: anIndex) ifNil:
					[registers
						at: anIndex
						put: ReRegister new]]! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:45:15'!
setSlots: totalSlots

	totalSlots > 1
		ifTrue: [ registers := Array new: totalSlots - 1 ]! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 6/11/2025 11:36:21'!
start

	^ register0 start! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 6/4/2025 10:42:54'!
startSlot: slotIndex at: matchPosition

	(self registerAt: slotIndex)
		start: matchPosition! !

!RegexpMatch methodsFor: 'private' stamp: 'ess 11/16/2024 09:41:21'!
string: aString

	string := aString! !

!RegexpMatch methodsFor: 'as yet unclassified' stamp: 'ess 6/4/2025 10:16:21'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: register0;
		nextPut: $,;
		print: registers;
		nextPut: $)! !

!RegexpMatch class methodsFor: 'instance creation' stamp: 'ess 11/6/2024 13:22:27'!
slotsNeeded: totalSlots

	^ self new
		setSlots: totalSlots! !

!RegexpPattern methodsFor: 'accessing' stamp: 'ess 5/31/2025 07:52:40'!
slotsNeeded

	^ program slotsNeeded! !

!RegexpPattern methodsFor: 'converting' stamp: 'ess 5/31/2025 07:15:37'!
asRegex

	^ self! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:14:39'!
allMatches: aString startingAt: startIndex endingAt: endIndex
	"Answer an array of all non-overlapping matches from aString, from left-to-right."

	^ self
		allMatches: aString
		startingAt: startIndex
		endingAt: endIndex
		collect: [ :each | each ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:18:31'!
allMatches: aString startingAt: startIndex endingAt: endIndex asStringsCollect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping substring matches from aString."

	^ Array streamContents: [ :stream |
		self
			allMatches: aString
			startingAt: startIndex
			endingAt: endIndex
			asStringsDo: [ :each |
				stream
					nextPut: (aUnaryBlock value: each) ] ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:19:04'!
allMatches: aString startingAt: startIndex endingAt: endIndex asStringsDo: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping substring match from aString."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: endIndex
		do: [ :each |
			aUnaryBlock
				value: (each groupAt: 0) ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 6/10/2025 09:49:26'!
allMatches: aString startingAt: startIndex endingAt: endIndex asStringsDo: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping substring match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: endIndex
		do: [ :each |
			matchBlock value: (each groupAt: 0) ]
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:14:59'!
allMatches: aString startingAt: startIndex endingAt: endIndex collect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping matches from aString."

	^ Array streamContents: [ :stream |
		self
			allMatches: aString
			startingAt: startIndex
			endingAt: endIndex
			do: [ :each |
				stream
					nextPut: (aUnaryBlock value: each) ] ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 6/4/2025 14:51:37'!
allMatches: aString startingAt: startIndex endingAt: endIndex do: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping match from aString."

	| start end nextStart match |
	start := (startIndex ifNil: [ 1 ]) max: 1.
	end := (endIndex ifNil: [ aString size ]) min: aString size.
	nextStart := start.
	[ nextStart <= end ] whileTrue: [
		match := self
			findIn: aString
			startingAt: nextStart
			endingAt: end.
		nextStart := match
			ifNil: [ end + 1 ]
			ifNotNil: [
				aUnaryBlock value: match.
				((match endOfGroup: 0) max: nextStart) + 1 ] ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 6/10/2025 09:44:10'!
allMatches: aString startingAt: startIndex endingAt: endIndex do: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	| start end unmatchedStart |
	start := (startIndex ifNil: [ 1 ]) max: 1.
	end := (endIndex ifNil: [ aString size ]) min: aString size.
	unmatchedStart := start.
	self
		allMatches: aString
		startingAt: start
		endingAt: end
		do: [ :each |
			unmatchedBlock value:
				(aString
					copyFrom: unmatchedStart
					to: (each startOfGroup: 0) - 1).
			matchBlock value: each.
			unmatchedStart := (each endOfGroup: 0) + 1 ].
	unmatchedBlock value:
		(aString
			copyFrom: unmatchedStart
			to: aString size)! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:15:59'!
allMatchesAsStrings: aString startingAt: startIndex endingAt: endIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		allMatches: aString
		startingAt: startIndex
		endingAt: endIndex
		asStringsCollect: [ :each | each ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:33:06'!
findAsStringIn: aString startingAt: startIndex endingAt: endIndex
	"Search for a match of pattern in aString, answering the matching substring or nil if no match can be found."

	| match |
	match := self
		findIn: aString
		startingAt: startIndex
		endingAt: endIndex.
	^ match ifNotNil: [
		match groupAt: 0 ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 6/3/2025 16:21:34'!
findIn: aString startingAt: startIndex endingAt: endIndex
	"Search for a match of pattern in aString, answering nil if no match can be found."

	^ (ReProcess program: program)
		find: aString
		startingAt: startIndex
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:29:07'!
fullMatch: aString startingAt: startIndex endingAt: endIndex
	"Answer a match object if pattern matches all of aString, otherwise nil."

	| match end isFullMatch |
	match := self
		match: aString
		startingAt: startIndex
		endingAt: endIndex.
	match ifNil: [
		^ nil ].
	end := (endIndex ifNil: [ aString size ]) min: aString size.
	isFullMatch := (match endOfGroup: 0) = end.
	^ isFullMatch
		ifTrue: [ match ]
		ifFalse: [ nil ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:30:52'!
fullMatchAsString: aString startingAt: startIndex endingAt: endIndex
	"Answer the matching string if pattern matches all of aString, otherwise nil."

	| match |
	match := self
		fullMatch: aString
		startingAt: startIndex
		endingAt: endIndex.
	^ match ifNotNil: [
		match groupAt: 0 ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:27:28'!
match: aString startingAt: startIndex endingAt: endIndex
	"Try to match pattern at the start of aString, answering the match or nil."

	^ (ReProcess program: program)
		match: aString
		startingAt: startIndex
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:27:01'!
matchAsString: aString startingAt: startIndex endingAt: endIndex
	"Try to match pattern at the start of aString, answering the matching prefix or nil."

	| match |
	match := self
		match: aString
		startingAt: startIndex
		endingAt: endIndex.
	^ match ifNotNil: [
		match groupAt: 0 ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 6/10/2025 09:42:09'!
replaceAllIn: aString startingAt: startIndex endingAt: endIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for all matches found in aString."
	"Note that the startIndex and endIndex parameters only constrain the search for the match.  The answer will use the whole of aString."

	^ String streamContents: [ :stream |
		self
			allMatches: aString
			startingAt: startIndex
			endingAt: endIndex
			do: [ :eachMatch |
				stream
					nextPutAll: (aUnaryBlock value: eachMatch) ]
			surroundedBy: [ :eachString |
				stream
					nextPutAll: eachString ] ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 07:41:28'!
replaceAllIn: aString startingAt: startIndex endingAt: endIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for all matches found in aString."
	"Note that the startIndex and endIndex parameters only constrain the search for the match.  The answer will use the whole of aString."

	^ self
		replaceAllIn: aString
		startingAt: startIndex
		endingAt: endIndex
		using: [ :each |
			each expand: aTemplateString ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 07:40:28'!
replaceIn: aString startingAt: startIndex endingAt: endIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for the first match found in aString."
	"Note that the startIndex and endIndex parameters only constrain the search for the match.  The answer will use the whole of aString."

	| match before result after |
	match := self
		findIn: aString
		startingAt: startIndex
		endingAt: endIndex.
	match ifNil: [
		^ aString ].
	before := aString
		copyFrom: 1
		to: (match startOfGroup: 0) - 1.
	result := aUnaryBlock value: match.
	after := aString
		copyFrom: (match endOfGroup: 0) + 1
		to: aString size.
	^ before, result, after! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 07:40:12'!
replaceIn: aString startingAt: startIndex endingAt: endIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for the first match found in aString."
	"Note that the startIndex and endIndex parameters only constrain the search for the match.  The answer will use the whole of aString."

	^ self
		replaceIn: aString
		startingAt: startIndex
		endingAt: endIndex
		using: [ :each |
			each expand: aTemplateString ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:50:03'!
separateSubstringsOf: aString startingAt: startIndex endingAt: endIndex
	"Answer an array of all non-matching substrings from aString, from left-to-right."

	| start end nextStart matchStart |
	start := (startIndex ifNil: [ 1 ]) max: 1.
	end := (endIndex ifNil: [ aString size ]) min: aString size.
	nextStart := start.
	^ Array streamContents: [ :stream |
		self
			allMatches: aString
			startingAt: start
			endingAt: end
			do: [ :each |
				matchStart := each startOfGroup: 0.
				matchStart > nextStart ifTrue: [
					stream nextPut:
						(aString
							copyFrom: nextStart
							to: matchStart - 1) ].
				nextStart := (each endOfGroup: 0) + 1 ].
		end > nextStart ifTrue: [
			stream nextPut:
				(aString
					copyFrom: nextStart
					to: endIndex) ] ]! !

!RegexpPattern methodsFor: 'evaluating' stamp: 'ess 5/31/2025 05:34:10'!
tokensIn: aString startingAt: startIndex endingAt: endIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		allMatchesAsStrings: aString
		startingAt: startIndex
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-compatibility' stamp: 'ess 6/2/2025 09:05:21'!
copy: aString translatingMatchesUsing: aUnaryBlock

	^ self
		replaceAllIn: aString
		using: [ :each |
			aUnaryBlock value: (each groupAt: 0) ]! !

!RegexpPattern methodsFor: 'evaluating-compatibility' stamp: 'ess 6/10/2025 07:05:27'!
matchesIn: aString do: aUnaryBlock

	self
		allMatches: aString
		asStringsDo: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-compatibility' stamp: 'ess 6/2/2025 09:09:09'!
matchingRangesIn: aString

	^ self
		allMatches: aString
		collect: [ :each |
			each spanOfGroup: 0 ]! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:17:29'!
allMatches: aString
	"Answer an array of all non-overlapping matches from aString, from left-to-right."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:18:25'!
allMatches: aString asStringsCollect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping substring matches from aString."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		asStringsCollect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:19:09'!
allMatches: aString asStringsDo: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping substring match from aString."

	self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		asStringsDo: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:50:28'!
allMatches: aString asStringsDo: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping substring match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		asStringsDo: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:19:33'!
allMatches: aString collect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping matches from aString."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		collect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:21:00'!
allMatches: aString do: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping match from aString."

	self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		do: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:46:08'!
allMatches: aString do: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: nil
		endingAt: nil
		do: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:17:35'!
allMatches: aString endingAt: endIndex
	"Answer an array of all non-overlapping matches from aString, from left-to-right."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:16:43'!
allMatches: aString endingAt: endIndex asStringsCollect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping substring matches from aString."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		asStringsCollect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:17:00'!
allMatches: aString endingAt: endIndex asStringsDo: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping substring match from aString."

	self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		asStringsDo: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:50:21'!
allMatches: aString endingAt: endIndex asStringsDo: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping substring match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		asStringsDo: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:19:40'!
allMatches: aString endingAt: endIndex collect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping matches from aString."

	^ self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		collect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:21:06'!
allMatches: aString endingAt: endIndex do: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping match from aString."

	self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		do: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:46:01'!
allMatches: aString endingAt: endIndex do: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: nil
		endingAt: endIndex
		do: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:17:42'!
allMatches: aString startingAt: startIndex
	"Answer an array of all non-overlapping matches from aString, from left-to-right."

	^ self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:18:43'!
allMatches: aString startingAt: startIndex asStringsCollect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping substring matches from aString."

	^ self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		asStringsCollect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:19:17'!
allMatches: aString startingAt: startIndex asStringsDo: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping substring match from aString."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		asStringsDo: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:49:54'!
allMatches: aString startingAt: startIndex asStringsDo: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping substring match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		asStringsDo: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:19:45'!
allMatches: aString startingAt: startIndex collect: aUnaryBlock
	"Answer an array of the results of evaluating aUnaryBlock on all non-overlapping matches from aString."

	^ self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		collect: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:21:11'!
allMatches: aString startingAt: startIndex do: aUnaryBlock
	"Evaluate aUnaryBlock with each consecutive, non-overlapping match from aString."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		do: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 6/10/2025 09:45:29'!
allMatches: aString startingAt: startIndex do: matchBlock surroundedBy: unmatchedBlock
	"Evaluate matchBlock with each consecutive, non-overlapping match from aString.  Evaluate unmatchedBlock with each possibly-empty unmatched string before the first match, between each successive match, and after the last match."

	self
		allMatches: aString
		startingAt: startIndex
		endingAt: nil
		do: matchBlock
		surroundedBy: unmatchedBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:22:39'!
allMatchesAsStrings: aString
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		allMatchesAsStrings: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:22:34'!
allMatchesAsStrings: aString endingAt: endIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		allMatchesAsStrings: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:22:29'!
allMatchesAsStrings: aString startingAt: startIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		allMatchesAsStrings: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:33:21'!
findAsStringIn: aString
	"Search for a match of pattern in aString, answering the matching substring or nil if no match can be found."

	^ self
		findAsStringIn: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:33:16'!
findAsStringIn: aString endingAt: endIndex
	"Search for a match of pattern in aString, answering the matching substring or nil if no match can be found."

	^ self
		findAsStringIn: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:33:11'!
findAsStringIn: aString startingAt: startIndex
	"Search for a match of pattern in aString, answering the matching substring or nil if no match can be found."

	^ self
		findAsStringIn: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:32:40'!
findIn: aString
	"Search for a match of pattern in aString, answering nil if no match can be found."

	^ self
		findIn: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:32:35'!
findIn: aString endingAt: endIndex
	"Search for a match of pattern in aString, answering nil if no match can be found."

	^ self
		findIn: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:32:30'!
findIn: aString startingAt: startIndex
	"Search for a match of pattern in aString, answering nil if no match can be found."

	^ self
		findIn: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:29:27'!
fullMatch: aString
	"Answer a match object if pattern matches all of aString, otherwise nil."

	^ self
		fullMatch: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:29:22'!
fullMatch: aString endingAt: endIndex
	"Answer a match object if pattern matches all of aString, otherwise nil."

	^ self
		fullMatch: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:29:16'!
fullMatch: aString startingAt: startIndex
	"Answer a match object if pattern matches all of aString, otherwise nil."

	^ self
		fullMatch: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:31:10'!
fullMatchAsString: aString
	"Answer the matching string if pattern matches all of aString, otherwise nil."

	^ self
		fullMatchAsString: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:31:05'!
fullMatchAsString: aString endingAt: endIndex
	"Answer the matching string if pattern matches all of aString, otherwise nil."

	^ self
		fullMatchAsString: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:31:00'!
fullMatchAsString: aString startingAt: startIndex
	"Answer the matching string if pattern matches all of aString, otherwise nil."

	^ self
		fullMatchAsString: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:27:47'!
match: aString
	"Try to match pattern at the start of aString, answering the match or nil."

	^ self
		match: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:27:42'!
match: aString endingAt: endIndex
	"Try to match pattern at the start of aString, answering the match or nil."

	^ self
		match: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:27:37'!
match: aString startingAt: startIndex
	"Try to match pattern at the start of aString, answering the match or nil."

	^ self
		match: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:26:31'!
matchAsString: aString
	"Try to match pattern at the start of aString, answering the matching prefix or nil."

	^ self
		matchAsString: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:26:26'!
matchAsString: aString endingAt: endIndex
	"Try to match pattern at the start of aString, answering the matching prefix or nil."

	^ self
		matchAsString: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:26:21'!
matchAsString: aString startingAt: startIndex
	"Try to match pattern at the start of aString, answering the matching prefix or nil."

	^ self
		matchAsString: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:38:50'!
replaceAllIn: aString endingAt: endIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: nil
		endingAt: endIndex
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:39:38'!
replaceAllIn: aString endingAt: endIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: nil
		endingAt: endIndex
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:38:24'!
replaceAllIn: aString startingAt: startIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: startIndex
		endingAt: nil
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:39:32'!
replaceAllIn: aString startingAt: startIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: startIndex
		endingAt: nil
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:38:57'!
replaceAllIn: aString using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: nil
		endingAt: nil
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:39:25'!
replaceAllIn: aString with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for all matches found in aString."

	^ self
		replaceAllIn: aString
		startingAt: nil
		endingAt: nil
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:36:37'!
replaceIn: aString endingAt: endIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: nil
		endingAt: endIndex
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:38:35'!
replaceIn: aString endingAt: endIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: nil
		endingAt: endIndex
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:36:20'!
replaceIn: aString startingAt: startIndex using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: startIndex
		endingAt: nil
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:38:30'!
replaceIn: aString startingAt: startIndex with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: startIndex
		endingAt: nil
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 07:36:44'!
replaceIn: aString using: aUnaryBlock
	"Answer the result of substituting the value of aUnaryBlock for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: nil
		endingAt: nil
		using: aUnaryBlock! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:38:40'!
replaceIn: aString with: aTemplateString
	"Answer the result of substituting the expansion of aTemplateString for the first match found in aString."

	^ self
		replaceIn: aString
		startingAt: nil
		endingAt: nil
		with: aTemplateString! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:35:40'!
separateSubstringsOf: aString
	"Answer an array of all non-matching substrings from aString, from left-to-right."

	^ self
		separateSubstringsOf: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:35:34'!
separateSubstringsOf: aString endingAt: endIndex
	"Answer an array of all non-matching substrings from aString, from left-to-right."

	^ self
		separateSubstringsOf: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:35:30'!
separateSubstringsOf: aString startingAt: startIndex
	"Answer an array of all non-matching substrings from aString, from left-to-right."

	^ self
		separateSubstringsOf: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:34:24'!
tokensIn: aString
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		tokensIn: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:34:19'!
tokensIn: aString endingAt: endIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		tokensIn: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'evaluating-shortcuts' stamp: 'ess 5/31/2025 05:34:15'!
tokensIn: aString startingAt: startIndex
	"Answer an array of all non-overlapping substring matches from aString, from left-to-right."

	^ self
		tokensIn: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing' stamp: 'ess 5/31/2025 05:51:39'!
fullyMatches: aString startingAt: startIndex endingAt: endIndex
	"Does pattern match the entirety of aString?"

	^ (self
		fullMatch: aString
		startingAt: startIndex
		endingAt: endIndex)
			notNil! !

!RegexpPattern methodsFor: 'testing' stamp: 'ess 5/31/2025 05:54:50'!
indexIn: aString startingAt: startIndex endingAt: endIndex
	"If pattern matches some part of aString, answer the index of the first matching character, otherwise 0."

	| match |
	match := self
		findIn: aString
		startingAt: startIndex
		endingAt: endIndex.
	^ match ifNotNil: [
		match startOfGroup: 0 ]! !

!RegexpPattern methodsFor: 'testing' stamp: 'ess 5/31/2025 05:52:13'!
matches: aString startingAt: startIndex endingAt: endIndex
	"Does pattern match a prefix of aString?"

	^ (self
		match: aString
		startingAt: startIndex
		endingAt: endIndex)
			notNil! !

!RegexpPattern methodsFor: 'testing' stamp: 'ess 5/31/2025 05:53:36'!
matchesIn: aString startingAt: startIndex endingAt: endIndex
	"Does pattern match some part of aString?"

	^ (self
		findIn: aString
		startingAt: startIndex
		endingAt: endIndex)
			notNil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:51:57'!
fullyMatches: aString
	"Does pattern match the entirety of aString?"

	^ self
		fullyMatches: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:51:52'!
fullyMatches: aString endingAt: endIndex
	"Does pattern match the entirety of aString?"

	^ self
		fullyMatches: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:51:46'!
fullyMatches: aString startingAt: startIndex
	"Does pattern match the entirety of aString?"

	^ self
		fullyMatches: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:55:06'!
indexIn: aString
	"If pattern matches some part of aString, answer the index of the first matching character, otherwise 0."

	^ self
		indexIn: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:55:02'!
indexIn: aString endingAt: endIndex
	"If pattern matches some part of aString, answer the index of the first matching character, otherwise 0."

	^ self
		indexIn: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:54:57'!
indexIn: aString startingAt: startIndex
	"If pattern matches some part of aString, answer the index of the first matching character, otherwise 0."

	^ self
		indexIn: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:52:28'!
matches: aString
	"Does pattern match a prefix of aString?"

	^ self
		matches: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:52:23'!
matches: aString endingAt: endIndex
	"Does pattern match a prefix of aString?"

	^ self
		matches: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:52:18'!
matches: aString startingAt: startIndex
	"Does pattern match a prefix of aString?"

	^ self
		matches: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:53:56'!
matchesIn: aString
	"Does pattern match some part of aString?"

	^ self
		matchesIn: aString
		startingAt: nil
		endingAt: nil! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:53:51'!
matchesIn: aString endingAt: endIndex
	"Does pattern match some part of aString?"

	^ self
		matchesIn: aString
		startingAt: nil
		endingAt: endIndex! !

!RegexpPattern methodsFor: 'testing-shortcuts' stamp: 'ess 5/31/2025 05:53:44'!
matchesIn: aString startingAt: startIndex
	"Does pattern match some part of aString?"

	^ self
		matchesIn: aString
		startingAt: startIndex
		endingAt: nil! !

!RegexpPattern methodsFor: 'private' stamp: 'ess 6/3/2025 14:55:56'!
compileProgram: aNode slotsNeeded: totalSlots

	program := ReProgram new.
	program
		slotsNeeded: totalSlots;
		compileProgram: aNode;
		match! !

!RegexpPattern class methodsFor: 'constants' stamp: 'ess 6/11/2025 11:56:28'!
escape: aString

	^ String streamContents: [ :stream |
		self
			escape: aString
			on: stream ]! !

!RegexpPattern class methodsFor: 'constants' stamp: 'ess 6/11/2025 11:56:48'!
escape: aString on: aStream

	aString do: [ :each |
		(each isAscii and: [ each isPosixAlnum not ])
			ifTrue: [
				aStream nextPut: $\ ].
		aStream nextPut: each ]! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 6/3/2025 14:56:16'!
compileProgram: aNode slotsNeeded: totalSlots

	^ self new
		compileProgram: aNode
		slotsNeeded: totalSlots! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 5/29/2025 06:14:57'!
from: aStringOrPattern

	(aStringOrPattern isKindOf: self) ifTrue: [
		^ aStringOrPattern ].
	^ self fromString: aStringOrPattern! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 14:52:32'!
fromString: aString

	^ self
		fromString: aString
		ignoreCase: false
		multiLine: false! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 14:52:06'!
fromString: aString ignoreCase: ignoreCase

	^ self
		fromString: aString
		ignoreCase: ignoreCase
		multiLine: false! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 14:51:36'!
fromString: aString ignoreCase: ignoreCase multiLine: multiLine

	^ (ReCompiler
		ignoreCase: ignoreCase
		multiLine: multiLine)
			compile: aString! !

!RegexpPattern class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 14:52:21'!
fromString: aString multiLine: multiLine

	^ self
		fromString: aString
		ignoreCase: false
		multiLine: multiLine! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:55:43'!
assertFullyMatches: aString
	"Assert that pattern matches the entirety of aString."

	self assert: (pattern fullyMatches: aString)! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:53:41'!
assertIn: aString
	"Assert that pattern matches somewhere in aString."

	self assert: (pattern findIn: aString) notNil! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:54:52'!
assertIn: aString equals: expected
	"Assert that pattern matches somewhere in aString and the matched substring is equal to expected."

	self
		assert: (pattern findAsStringIn: aString)
		equals: expected! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:56:32'!
assertMatches: aString
	"Assert that pattern matches at the beginning of aString."

	self assert: (pattern matches: aString)! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:52:01'!
denyFullyMatches: aString
	"Assert that pattern does not match the entirety of aString."

	self deny: (pattern fullyMatches: aString)! !

!RegexpPatternTests methodsFor: 'assertions' stamp: 'ess 5/30/2025 13:53:21'!
denyIn: aString
	"Assert that pattern does not match anywhere in aString."

	self assert: (pattern findIn: aString) isNil! !

!RegexpPatternTests methodsFor: 'running' stamp: 'ess 5/31/2025 02:26:47'!
compile: aString

	self
		compile: aString
		ignoreCase: false! !

!RegexpPatternTests methodsFor: 'running' stamp: 'ess 5/31/2025 02:26:26'!
compile: aString ignoreCase: ignoreCase

	pattern := RegexpPattern
		fromString: aString
		ignoreCase: ignoreCase! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:28:37'!
testBeginningOfInput1

	self
		compile: '\Abb';
		assertMatches: 'bbb';
		denyIn: 'abb';
		denyIn: 'babb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:28:01'!
testBeginningOfInput2

	self
		compile: '\A';
		assertMatches: 'abb';
		assertMatches: 'babb';
		assertMatches: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:22:56'!
testBeginningOfLine1

	self
		compile: '^bb';
		assertMatches: 'bbb';
		denyIn: 'abb';
		denyIn: 'babb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:24:00'!
testBeginningOfLine2

	self
		compile: '^';
		assertMatches: 'abb';
		assertMatches: 'babb';
		assertMatches: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:32:32'!
testBeginningOfWord1

	self
		compile: '\<bb';
		assertMatches: 'bbb';
		denyIn: 'abb';
		denyIn: 'babb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:32:52'!
testBeginningOfWord2

	self
		compile: '\<';
		assertMatches: 'abb';
		assertMatches: 'babb';
		denyIn: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 5/30/2025 13:57:51'!
testBlockComment

	self compile: 'ab (?# (?# a|b ) b )'.
	self
		assertFullyMatches: 'ab';
		denyFullyMatches: 'abb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:24:55'!
testDoesntBacktrack

	| target |	
	target := 'aaaaa'.  "5 characters"
	target := target, target.  "10"
	target := target, target, target, target, target.  "50"
	self compile: '(a*)*'.
	self assertFullyMatches: target! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:48:19'!
testEndOfInput1

	self
		compile: 'bb\Z';
		assertIn: 'bbb';
		denyIn: 'bba';
		denyIn: 'bbab'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/3/2025 11:42:58'!
testEndOfInput2

	self
		compile: '\Z';
		assertIn: 'abb';
		assertIn: 'babb';
		assertIn: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:47:10'!
testEndOfLine1

	self
		compile: 'bb$';
		assertIn: 'bbb';
		denyIn: 'bba';
		denyIn: 'bbab'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:47:37'!
testEndOfLine2

	self
		compile: '$';
		assertIn: 'abb';
		assertIn: 'babb';
		assertIn: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:49:11'!
testEndOfWord1

	self
		compile: 'bb\>';
		assertIn: 'bbb';
		denyIn: 'bba';
		denyIn: 'bbab'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/3/2025 15:17:45'!
testEndOfWord2

	self
		compile: '\>';
		assertIn: 'abb';
		assertIn: 'babb';
		denyIn: ''! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/4/2025 08:47:03'!
testExample1

	| match |
	self compile: 'a (bb)+ a'.
	self
		assertFullyMatches: 'abba';
		assertFullyMatches: 'abbbba';
		denyIn: 'abbba'.
	match := pattern fullMatch: 'abbbba'.
	self
		assert: (match groupAt: 0)
		equals: 'abbbba'.
	self
		assert: (match groupAt: 1)
		equals: 'bb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:30:30'!
testExample2a

	self compile: 'abab | abbb'.
	self
		assertFullyMatches: 'abab';
		assertFullyMatches: 'abbb';
		denyIn: 'abba'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:30:51'!
testExample2b

	| result |
	self compile: 'ab (a|b) b'.
	self
		assertFullyMatches: 'abab';
		assertFullyMatches: 'abbb';
		denyIn: 'abba'.
	result := pattern fullMatch: 'abab'.
	self
		assert: (result groupAt: 1)
		equals: 'a'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:31:00'!
testExample2c

	| result |
	self compile: 'ab ((?# either ) ab | (?# or) bb)'.
	self
		assertFullyMatches: 'abab';
		assertFullyMatches: 'abbb';
		denyIn: 'abba'.
	result := pattern fullMatch: 'abbb'.
	self
		assert: (result groupAt: 0)
		equals: 'abbb'.
	self
		assert: (result groupAt: 1)
		equals: 'bb'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:50:13'!
testGeneralCategory1

	self compile: '\p{ Lowercase_Letter }'.
	self
		denyIn: '1';
		denyIn: 'A';
		assertMatches: 'ß'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:50:22'!
testGeneralCategory2

	self compile: '\P{ Lowercase_Letter } # not a lowercase letter'.
	self
		assertMatches: '1';
		assertMatches: 'A';
		denyIn: 'ß'! !

!RegexpPatternTests methodsFor: 'tests' stamp: 'ess 6/2/2025 13:50:30'!
testGeneralCategory3

	self compile: '\p{ Decimal_Number }'.
	self
		assertMatches: '1';
		denyIn: 'A';
		denyIn: 'ß'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:04:04'!
aboutTestsRegex
	"Tests in this category are from [Cuis-Smalltalk-Regex](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Regex).
	Test names have been preserved for traceability."! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 6/4/2025 14:52:25'!
failingTestEmptyStringNotAtWordBoundary

	| result |
	self compile: '\B'.
	result := pattern
		replaceAllIn: 'foo bar'
		with: '*'.
	self
		assert: result
		equals: 'f*o*o b*a*r'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 6/2/2025 09:03:05'!
test
	"the regular expression matches words beginning with either an uppercase or a lowercase T"

	| result |
	result := '\<t\w+' asRegexIgnoringCase
		copy: 'now is the Time'
		translatingMatchesUsing: [ :each | each asUppercase ].
	self
		assert: result
		equals: 'now is THE TIME'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:59:46'!
testBackQuotesEscape
	"Regular expressions can also include the following backquote escapes to refer to popular classes of characters:
		\w	any word constituent character (same as [a-zA-Z0-9:=])
		\W	any character but a word constituent
		\d	a digit (same as [0-9])
		\D	anything but a digit
		\s	a whitespace character
		\S	anything but a whitespace character
	These escapes are also allowed in character classes: '[\w+-]' means 'any character that is either a word constituent, or a plus, or a minus'."

	self
		assert: ('one word' prefixMatchesRegex: '\w+');
		assert: ('one' matchesRegex: '\w+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 6/4/2025 11:56:10'!
testCadrMatching
	"A bit more complex example is the following expression, matching the name of any of the Lisp-style `car', `cdr', `caar', `cadr', ... functions:"

	self
		"assert: ('car' matchesRegex: 'c(a|d)+r');
		assert: ('cdr' matchesRegex: 'c(a|d)+r');"
		assert: ('caar' matchesRegex: 'c(a|d)+r')";
		assert: ('cadr' matchesRegex: 'c(a|d)+r');
		assert: ('caddar' matchesRegex: 'c(a|d)+r')"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:30:18'!
testCaseInsensitive

	self
		compile: 'the\ quick\ brown\ fox'
		ignoreCase: true.
	self
		assertFullyMatches: 'the quick brown fox';
		assertFullyMatches: 'The quick brown FOX';
		assertIn: 'What do you know about the quick brown fox?';
		assertIn: 'What do you know about THE QUICK BROWN FOX?'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:29:12'!
testCaseSensitive

	self
		compile: 'the\ quick\ brown\ fox'
		ignoreCase: false.
	self
		assertFullyMatches: 'the quick brown fox';
		denyIn: 'The quick brown FOX';
		assertIn: 'What do you know about the quick brown fox?';
		denyIn: 'What do you know about THE QUICK BROWN FOX?'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:15:25'!
testCharacterSet
	"So far, we have used only characters as the 'smallest' components of regular expressions.  There are other, more `interesting', components.  A character set is a string of characters enclosed in square brackets.  It matches any single character if it appears between the brackets.
	For example, `[01]' matches either `0' or `1':"

	self
		assert: ('0' matchesRegex: '[01]');
		deny: ('3' matchesRegex: '[01]');
		deny: ('11' matchesRegex: '[01]');  "-- false: a set matches only one character"
		assert: ('01' matchesRegex: '[01][01]')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:15:38'!
testCharacterSetBinaryNumber
	"Using plus operator, we can build the following binary number recognizer:"

	self
		assert: ('10010100' matchesRegex: '[01]+');
		deny: ('10001210' matchesRegex: '[01]+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:16:14'!
testCharacterSetInversion
	"If the first character after the opening bracket is `^', the set is inverted: it matches any single character *not* appearing between the brackets:"

	self
		deny: ('0' matchesRegex: '[^01]');  "0 appears in 01 so there is no match"
		assert: ('3' matchesRegex: '[^01]');  "3 is not in 01 so it matches"
		deny: ('30' matchesRegex: '[^01]');
		deny: ('33333333333333333333333330' matchesRegex: '[^01]')  "there is one zero so it does not match"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:16:36'!
testCharacterSetRange
	"For convenience, a set may include ranges: pairs of characters separated with `-'.  This is equivalent to listing all characters between them: `[0-9]' is the same as `[0123456789]'. "

	self
		assert: ('0' matchesRegex: '[0-9]');
		assert: ('9' matchesRegex: '[0-9]');
		deny: ('a' matchesRegex: '[0-9]');
		deny: ('01' matchesRegex: '[0-9]');
		assert: ('01442128629839374565' matchesRegex: '[0-9]+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 09:45:30'!
testCopyReplacingMatches
	"See that the match context is preserved while copying stuff between matches:"

	| result |
	self compile: '\<\d\D+'.
	result := pattern
		replaceAllIn: '9aaa1bbb 8ccc'
		with: 'foo'.
	self
		assert: result
		equals: 'foo1bbb foo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 09:58:43'!
testCopyTranslatingMatches

	| result |
	result := 'now is  the   time    '
		copyWithRegex: '\w+'
		matchesTranslatedUsing: [ :each |
			each reversed ].
	self
		assert: result
		equals: 'won si  eht   emit    '! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:33:49'!
testEmptyStringAtBeginningOfLine

	| result |
	self compile: '^'.
	result := pattern
		replaceAllIn: 'foo1 bar1', String crString, 'foo2 bar2'
		with: '*'.
	self
		assert: result
		equals: '*foo1 bar1', String crString, '*foo2 bar2'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 10:03:10'!
testEmptyStringAtBeginningOfWord

	| result |
	self compile: '\<'.
	result := pattern
		replaceAllIn: 'foo bar'
		with: '*'.
	self
		assert: result
		equals: '*foo *bar'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:34:34'!
testEmptyStringAtEndOfLine

	| result |
	self compile: '$'.
	result := pattern
		replaceAllIn: 'foo1 bar1', String crString, 'foo2 bar2'
		with: '*'.
	self
		assert: result
		equals: 'foo1 bar1*', String crString, 'foo2 bar2*'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 10:03:05'!
testEmptyStringAtEndOfWord

	| result |
	self compile: '\>'.
	result := pattern
		replaceAllIn: 'foo bar'
		with: '*'.
	self
		assert: result
		equals: 'foo* bar*'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:35:26'!
testEmptyStringAtWordBoundary

	| result |
	self compile: '\b'.
	result := pattern
		replaceAllIn: 'foo bar'
		with: '*'.
	self
		assert: result
		equals: '*foo* *bar*'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:01:31'!
testHenry012a

	self compile: 'a.*c'.
	self
		assertFullyMatches: 'axyzc';
		assertFullyMatches: 'axy zc';
		denyIn: 'axyzd'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 6/3/2025 15:21:55'!
testHenry012b

	| stringWithNUL |
	stringWithNUL := 'axy', (String with: Character null), 'zc'.
	self compile: 'a.*c'.
	self assertFullyMatches: stringWithNUL! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry013

	self compile: '.a.*'.
	self
		assertIn: '1234abc'
		equals: '4abc'.
	self denyIn: 'abcd'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:01:46'!
testHenry014

	self compile: 'a\w+c'.
	self
		assertFullyMatches: 'abbbbc';
		denyIn: 'abb bc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry015

	self compile: '\w+'.
	self
		assertIn: '  	foobar	quux'
		equals: 'foobar'.
	self denyIn: ' 	~!!@#$%^&*()-+=\|/?.>,<'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:01:58'!
testHenry016

	self compile: 'a\W+c'.
	self
		assertFullyMatches: 'a   c';
		denyIn: 'a bc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry017

	self compile: '\W+'.
	self denyIn: 'foobar'.
	self
		assertIn: 'foo!!@#$bar'
		equals: '!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:02:09'!
testHenry018

	self compile: 'a\s*c'.
	self
		assertFullyMatches: 'a   c';
		denyIn: 'a bc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry019

	self compile: '\s+'.
	self denyIn: '1234$^*^&asdfb'.
	self
		assertIn: 'abc3457 sd'
		equals: ' '! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:02:21'!
testHenry020

	self compile: 'a\S*c'.
	self
		assertFullyMatches: 'aqwertyc';
		denyIn: 'ab c'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry021

	self compile: '\S+'.
	self
		assertIn: '     	asdf		'
		equals: 'asdf'.

	"N.B., test string contains newline, spaces, and tabs"
	self denyIn: ' 	
			'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:02:39'!
testHenry022

	self compile: 'a\d+c'.
	self
		assertFullyMatches: 'a0123456789c';
		denyIn: 'a12b34c'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry023

	self compile: '\d+'.
	self
		assertIn: 'foo@#$%123ASD #$$%^&'
		equals: '123'.
	self denyIn: 'foo!!@#$asdfl;'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:02:50'!
testHenry024

	self compile: 'a\D+c'.
	self
		assertFullyMatches: 'aqwertyc';
		denyIn: 'aqw6ertc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry025

	self compile: '\D+'.
	self
		assertIn: '1234 abc 456'
		equals: ' abc '.
	self denyIn: '1234567890'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:55:43'!
testHenry026

	self compile: '(f|o)+\b'.
	self assertFullyMatches: 'foo'.
	self
		assertIn: ' foo '
		equals: 'foo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:03:01'!
testHenry027

	self compile: '\ba\w+'.  "A word beginning with an 'a'."
	self
		assertIn: 'land ancient'
		equals: 'ancient'.
	self
		assertIn: 'antique vase'
		equals: 'antique'.
	self denyIn: 'goofy foobar'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry028

	self compile: '(f|o)+\B'.
	self
		assertIn: 'quuxfoobar'
		equals: 'foo'.
	self
		assertIn: 'quuxfoo'
		equals: 'fo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:03:09'!
testHenry029

	self compile: '\Ba\w+'.  "A word with an 'a' in the middle."
	self
		assertIn: 'land ancient'
		equals: 'and'.
	self
		assertIn: 'antique vase'
		equals: 'ase'.
	self
		assertIn: 'smalltalk shall overcome'
		equals: 'alltalk'.
	self denyIn: 'foonix is better'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:56:32'!
testHenry030

	self compile: 'fooa\>.*'.
	self
		assertMatches: 'fooa ';
		denyIn: 'fooa123';
		assertMatches: 'fooa bar';
		assertMatches: 'fooa';
		denyIn: 'fooargh'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 10:09:44'!
testHenry031

	self compile: '\>.+abc'.
	self
		denyIn: 'abcde fg';
		assertIn: 'foo abcde';
		denyIn: 'abcde'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 10:09:09'!
testHenry032

	self compile: '\<foo.*'.
	self
		assertMatches: 'foo';
		assertMatches: 'foobar'.
	self
		assertIn: 'qfoobarq foonix'
		equals: 'foonix'.
	self
		assertIn: ' foo';
		denyIn: ' 12foo';
		denyIn: 'barfoo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry033

	self compile: '.+\<foo'.
	self denyIn: 'foo'.
	self
		assertIn: 'ab foo'
		equals: 'ab foo'.
	self denyIn: 'abfoo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:56:32'!
testHenry039

	self compile: 'a[a-b-c]'.
	self assertMatches: 'a-'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:04:12'!
testHenry049

	self compile: '[\de]+'.
	self
		assertFullyMatches: '01234';
		assertFullyMatches: '0123e456';
		assertMatches: '0123e45g78'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:04:25'!
testHenry050

	self compile: '[e\d]+'.
	self
		assertFullyMatches: '01234';
		assertFullyMatches: '0123e456';
		assertMatches: '0123e45g78'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry051

	self compile: '[\D]+'.
	self
		assertIn: '123abc45def78'
		equals: 'abc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:04:52'!
testHenry052

	self compile: '[[:digit:]e]+'.
	self
		assertFullyMatches: '01234';
		assertFullyMatches: '0123e456';
		assertMatches: '0123e45g78'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry053

	self compile: '[\s]+'.
	self
		assertIn: '2  spaces'
		equals: '  '! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry054

	self compile: '[\S]+'.
	self
		assertIn: '  word12!!@#$  '
		equals: 'word12!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry055

	self compile: '[\w]+'.
	self
		assertIn: ' 	foo123bar	45'
		equals: 'foo123bar'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry056

	self compile: '[\W]+'.
	self
		assertIn: 'fii234!!@#$34f'
		equals: '!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry057

	self compile: '[^[:alnum:]]+'.
	self
		assertIn: 'fii234!!@#$34f'
		equals: '!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 13:54:18'!
testHenry058

	self compile: '[%&[:alnum:]]+'.
	self
		assertIn: 'foo%3'
		equals: 'foo%3'.
	self
		assertIn: 'foo34&rt4$57a'
		equals: 'foo34&rt4'.
	self denyIn: '!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:06:14'!
testHenry059

	self compile: '[[:alpha:]]+'.
	self
		assertIn: ' 123foo3 '
		equals: 'foo'.
	self
		assertIn: '123foo'
		equals: 'foo'.
	self
		assertIn: 'foo1b'
		equals: 'foo'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:06:53'!
testHenry060

	self compile: '[[:cntrl:]]+'.
	self denyIn: ' a 1234asdf'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:07:48'!
testHenry061

	self compile: '[[:lower:]]+'.
	self
		assertIn: 'UPPERlower1234'
		equals: 'lower'.
	self
		assertIn: 'lowerUPPER'
		equals: 'lower'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:08:27'!
testHenry062

	self compile: '[[:upper:]]+'.
	self
		assertIn: 'UPPERlower1234'
		equals: 'UPPER'.
	self
		assertIn: 'lowerUPPER'
		equals: 'UPPER'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:08:59'!
testHenry063

	self compile: '[[:space:]]+'.
	self
		assertIn: '2  spaces'
		equals: '  '! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:09:40'!
testHenry064

	self compile: '[^[:space:]]+'.
	self
		assertIn: '  word12!!@#$  '
		equals: 'word12!!@#$'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:10:15'!
testHenry065

	self compile: '[[:graph:]]+'.
	self
		assertIn: 'abc'
		equals: 'abc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:10:41'!
testHenry066

	self compile: '[[:print:]]+'.
	self
		assertIn: 'abc'
		equals: 'abc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:11:19'!
testHenry067

	self compile: '[^[:punct:]]+'.
	self
		assertIn: '!!hello,world!!'
		equals: 'hello'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:12:31'!
testHenry068

	self compile: '[[:xdigit:]]+'.
	self
		assertIn: '  x10FCD  '
		equals: '10FCD'.
	self
		assertIn: ' hgfedcba0123456789ABCDEFGH '
		equals: 'fedcba0123456789ABCDEF'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:17:33'!
testMatches

	self compile: '\w+'.
	self
		assertFullyMatches: 'now';
		denyFullyMatches: 'now is'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:38:12'!
testMatchesIn

	| result |
	self compile: '\w+'.
	result := pattern allMatchesAsStrings: 'now is the time'.
	self
		assert: result
		equals: #('now' 'is' 'the' 'time')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:39:43'!
testMatchesInCollect

	| result |
	self compile: '\w+'.
	result := pattern
		allMatches: 'now is the time'
		asStringsCollect: [ :each | each reversed ].
	self
		assert: result
		equals: #('won' 'si' 'eht' 'emit')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:41:27'!
testMatchesInDo

	| expected |
	self compile: '\w+'.
	expected := #('now' 'is' 'the' 'time') asOrderedCollection.
	pattern
		allMatches: 'now is the time'
		asStringsDo: [ :each |
			self
				assert: each
				equals: expected removeFirst ].
	self assert: expected isEmpty! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:43:57'!
testMatchesInwW

	| result |
	self compile: '\w+'.
	result := pattern allMatchesAsStrings: 'now is the time'.
	self
		assert: result
		equals: #('now' 'is' 'the' 'time').
		
	self compile: '\W+'.
	result := pattern allMatchesAsStrings: 'now is the time'.
	self
		assert: result
		equals: #(' ' ' ' ' ').

	self compile: '\w'.
	result := pattern allMatchesAsStrings: 'now'.
	self
		assert: result
		equals: #('n' 'o' 'w')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 10:27:43'!
testMatchesOnStream
	"| matcher |
	matcher := self matcherClass forString: '\w+'.
	self assert: (matcher matchesOnStream: 'now is the time' readStream) asArray 
		= #('now' 'is' 'the' 'time')"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 10:27:47'!
testMatchesOnStreamCollect
	"| matcher |
	matcher := self matcherClass forString: '\w+'.
	self assert: (matcher 
		matchesOnStream: 'now is the time' readStream 
		collect: [ :each | each reversed ]) asArray
			= #('won' 'si' 'eht' 'emit')"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 10:27:52'!
testMatchesOnStreamDo
	"| matcher expected |
	matcher := self matcherClass forString: '\w+'.
	expected := #('now' 'is' 'the' 'time') asOrderedCollection.
	matcher 
		matchesOnStream: 'now is the time' readStream
		do: [ :each | self assert: each = expected removeFirst ].
	self assert: expected isEmpty"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 10:27:56'!
testMatchesStream
	"| matcher |
	matcher := self matcherClass forString: '\w+'.
	self assert: (matcher matchesStream: 'now' readStream).
	self deny: (matcher matchesStream: 'now is' readStream)"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 6/2/2025 09:10:13'!
testMatchingRangesIn

	| expected |
	expected := #(1 3 5 6 8 10 12 15) asOrderedCollection.
	self compile: '\w+'.
	(pattern matchingRangesIn: 'now is the time') do: [ :each |
		self
			assert: each first
			equals: expected removeFirst.
		self
			assert: each second
			equals: expected removeFirst ].
	self assert: expected isEmpty! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:20:15'!
testOrOperator
	"The last operator is `|' meaning `or'. It is placed between two regular expressions, and the resulting expression matches if one of the expressions matches.  It has the lowest possible precedence (lower than sequencing).  For example, `ab*|ba*' means `a followed by any number of b's, or b followed by any number of a's':"

	self
		assert: ('abb' matchesRegex: 'ab*|ba*');
		assert: ('baa' matchesRegex: 'ab*|ba*');
		deny: ('baab' matchesRegex: 'ab*|ba*').

	"It is possible to write an expression matching an empty string, for example: `a|'.   However, it is an error to apply `*', `+', or `?' to such expression: `(a|)*' is an invalid expression."
	self
		should: [ '(a|)*' asRegex ]
		raise: Error! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:21:18'!
testQuotingOperators
	"As we have seen, characters `*', `+', `?', `(', and `)' have special meaning in regular expressions.  If one of them is to be used literally, it should be quoted: preceded with a backslash.  (Thus, backslash is also special character, and needs to be quoted for a literal match--as well as any other special character described further)."

	self
		deny: ('ab*' matchesRegex: 'ab*');  "	-- false: star in the right string is special"
		assert: ('ab*' matchesRegex: 'ab\*');
		assert: ('a\c' matchesRegex: 'a\\c')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:28:07'!
testRegex001

	self compile: '^.*$'.
	self
		assertFullyMatches: '';
		assertFullyMatches: 'a';
		assertFullyMatches: 'abc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:28:29'!
testRegex002

	self compile: 'a\w+c'.
	self
		assertFullyMatches: 'abb_bbc';
		denyIn: 'abb-bc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:28:54'!
testRegex003

	self compile: 'a\W+c'.
	self
		denyIn: 'abb_bbc';
		denyIn: 'abb-bc';
		assertFullyMatches: 'a.,:;-&!!"#%/()={[]}+?\~*''c'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:00:38'!
testRegex005

	self
		compile: 'H(ä|ae?)ndel';
		assertFullyMatches: 'Handel'.
	self
		compile: 'H(ä|ae?)ndel';
		assertFullyMatches: 'Händel'.
	self
		compile: 'H(ä|ae?)ndel';
		assertFullyMatches: 'Haendel'.
	self
		compile: 'H(ä|ae?)ndel';
		denyIn: 'Hendel'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 02:46:32'!
testRemoveHTMLTags

	| result |
	self compile: '</?[0-9A-Za-z]+[^>]*>'.
	result := pattern
		replaceAllIn: '<a>foo<b>bar</b></a>'
		with: ''.
	self
		assert: result
		equals: 'foobar'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:30:51'!
testSimpleMatchesRegex
	"The simplest regular expression is a single character.  It matches exactly that character.  A sequence of characters matches a string with exactly the same sequence of characters:"

	self
		assert: ('a' matchesRegex: 'a');
		assert: ('foobar' matchesRegex: 'foobar');
		deny: ('blorple' matchesRegex: 'foobar')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:32:04'!
testSimpleMatchesRegexWithStar
	"The above paragraph in testSimpleMatchesRegex introduced a primitive regular expression (a character), and an operator (sequencing).  Operators are applied to regular expressions to produce more complex regular expressions.  Sequencing (placing expressions one after another) as an operator is, in a certain sense, `invisible'--yet it is arguably the most common.  A more `visible' operator is Kleene closure, more often simply
referred to as `a star'.  A regular expression followed by an asterisk matches any number (including 0) of matches of the original expression.  For example:"

	self
		assert: ('ab' matchesRegex: 'a*b');
		assert: ('aaaaab' matchesRegex: 'a*b');
		assert: ('b' matchesRegex: 'a*b');
		deny: ('aac' matchesRegex: 'a*b')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:06:36'!
testSpecialCharacterInSetRange
	"Special characters within a set are `^', `-', and `]' that closes the set.  Below are the examples of how to literally use them in a set:
		[01^]	-- put the caret anywhere except the beginning
		[01-]	-- put the dash as the last character
		[]01]	-- put the closing bracket as the first character 
		[^]01]	(thus, empty and universal sets cannot be specified)"

	self
		assert: ('0' matchesRegex: '[01^]');
		assert: ('1' matchesRegex: '[01^]');
		assert: ('^' matchesRegex: '[01^]');
		deny: ('0' matchesRegex: '[^01]');
		deny: ('1' matchesRegex: '[^01]').

	"[^abc] means that everything except abc is matched"
	self assert: ('^' matchesRegex: '[^01]')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:07:09'!
testStarPlusQuestionMark
	"Two other operators similar to `*' are `+' and `?'. `+' (positive closure, or simply `plus') matches one or more occurrences of the original expression.  `?' (`optional') matches zero or one, but never more, occurrences."

	self
		assert: ('ac' matchesRegex: 'ab*c');
		deny: ('ac' matchesRegex: 'ab+c');  "false: need at least one b"
		assert: ('abbc' matchesRegex: 'ab+c');
		assert: ('abbbbbbc' matchesRegex: 'ab+c');
		deny: ('abbc' matchesRegex: 'ab?c')  "false: too many b's"! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:35:02'!
testStarPrecedence
	"A star's precedence is higher than that of sequencing.  A star applies to the shortest possible subexpression that precedes it.  For example, 'ab*' means `a followed by zero or more occurrences of b', not `zero or more occurrences of ab':"

	self
		assert: ('abbb' matchesRegex: 'ab*');
		deny: ('abab' matchesRegex: 'ab*').

	"To actually make a regex matching `zero or more occurrences of ab', `ab' is enclosed in parentheses:"
	self
		assert: ('abab' matchesRegex: '(ab)*');
		deny: ('abcab' matchesRegex: '(ab)*')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:24:07'!
testStringAllRangesOfRegexMatches

	| result |
	result := 'aabbcc' allRangesOfRegexMatches: 'b+'.
	self
		assert: result size
		equals: 1.
	self
		assert: (result at: 1)
		equals: #(3 4)! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:27:41'!
testStringAllRegexMatches

	| result |
	result := 'aabbcc' allRegexMatches: 'b+'.
	self
		assert: result size
		equals: 1.
	self
		assert: (result at: 1)
		equals: 'bb'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:27:58'!
testStringAsRegex

	self
		assert: 'b+' asRegex class
		equals: RegexpPattern! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:28:30'!
testStringAsRegexIgnoringCase

	self
		assert: 'b+' asRegexIgnoringCase class
		equals: RegexpPattern! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:31:29'!
testStringCopyWithRegexMatchesReplacedWith

	| result |
	result := 'aabbcc'
		copyWithRegex: 'b+'
		matchesReplacedWith: 'X'.
	self
		assert: result
		equals: 'aaXcc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:43:57'!
testStringCopyWithRegexMatchesTranslatedUsing

	| result |
	result := 'aabbcc'
		copyWithRegex: 'b+'
		matchesTranslatedUsing: [ :each |
			'X' ].
	self
		assert: result
		equals: 'aaXcc'! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:36:07'!
testStringMatchesRegex

	self
		deny: ('aabbcc' matchesRegex: 'a+');
		deny: ('aabbcc' matchesRegex: 'b+c+');
		assert: ('aabbcc' matchesRegex: 'a+b+c+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:42:03'!
testStringMatchesRegexIgnoringCase

	self
		deny: ('AABBCC' matchesRegexIgnoringCase: 'a+');
		deny: ('AABBCC' matchesRegexIgnoringCase: 'b+c+');
		assert: ('AABBCC' matchesRegexIgnoringCase: 'a+b+c+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:36:20'!
testStringPrefixMatchesRegex

	self
		assert: ('aabbcc' prefixMatchesRegex: 'a+');
		deny: ('aabbcc' prefixMatchesRegex: 'b+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/30/2025 14:56:28'!
testStringPrefixMatchesRegexIgnoringCase

	self
		assert: ('AABBCC' prefixMatchesRegexIgnoringCase: 'a+');
		deny: ('AABBCC' prefixMatchesRegexIgnoringCase: 'b+')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:47:14'!
testStringRegexMatchesCollect

	| result |
	result := 'aabbcc'
		regex: 'b+'
		matchesCollect: [ :each |
			each asUppercase ].
	self
		assert: result
		equals: #('BB')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:49:07'!
testStringRegexMatchesDo

	| result |
	result := OrderedCollection new.
	'aabbcc'
		regex: 'b+'
		matchesDo: [ :each |
			result add: each ].
	self
		assert: result asArray
		equals: #('bb')! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 07:53:01'!
testSubexpressionCount

	#(
		('a' 1)
		('a(b)' 2)
		('a(b(c))' 3)
		('(a)(b)' 3)
		('(a(b))*' 3)
	) do: [ :each |
		self compile: each first.
		self
			assert: pattern slotsNeeded
			equals: each second ]! !

!RegexpPatternTests methodsFor: 'tests-regex' stamp: 'ess 5/31/2025 10:13:19'!
testTranslatingMatchesUsing

	| result |
	result := 'now is the Time'
		copyWithRegex: '\<[Tt]\w+'
		matchesTranslatedUsing: [ :each |
			each asUppercase ].
	self
		assert: result
		equals: 'now is THE TIME'! !

!RegexpPatternTests methodsFor: 'tests-spencer' stamp: 'ess 5/30/2025 10:03:09'!
aboutTestsSpencer
	"Tests in this category are from Henry Spencer's regexp.c library."
	"See also #spencerTests."! !

!RegexpPatternTests methodsFor: 'tests-spencer' stamp: 'ess 6/4/2025 12:43:41'!
runSpencerTest: re match: string result: code substitute: source expect: result

	| match substitution |

	"Compile"
	[ self compile: re ]
		on: RegexpSyntaxError
		do: [
			code = 'c' ifFalse: [
				^ self signalFailure: 'Compile failed when expected to succeed: ', re ].
			"Expected compile failure."
			^ self ].
	code = 'c' ifTrue: [
		^ self signalFailure: 'Compile succeeded when expected to fail: ', re ].

	"Match"
	string = '-' ifTrue: [
		"No match test."
		^ self ].
	match := pattern findIn: string.
	code = 'n' ifTrue: [
		match ifNotNil: [
			^ self signalFailure: 'Match succeeded when expected to fail: ', string ].
		"Expected match failure."
		^ self ].
	match ifNil: [
		^ self signalFailure: 'Match failed when expected to succeed: ', string ].

	"Substitute"
	source = '-' ifTrue: [
		"No substitution test."
		^ self ].
	substitution := match expand: source.
	self
		assert: substitution
		equals: result! !

!RegexpPatternTests methodsFor: 'tests-spencer' stamp: 'ess 6/2/2025 09:58:42'!
spencerTests
	"Tests from Henry Spencer's classic regexp.c library described in Software Solutions in C."
	"Archived at https://github.com/garyhouston/regexp.old/blob/master/tests"

	"Fields are:
		1. a regular expression to test,
		2. a string to match it against,
		3. a result code,
			- 'c' for compile failure
			- 'y' for match success
			- 'n' for match failure
		4. a source string for substition, and
		5. the result of the substitution.
	See also https://github.com/garyhouston/regexp.old/blob/master/try.c"
	^ #(
		'abc'							'abc'					'y'	'&'				'abc'
		'abc'							'xbc'					'n'	'-'				'-'
		'abc'							'axc'					'n'	'-'				'-'
		'abc'							'abx'					'n'	'-'				'-'
		'abc'							'xabcy'					'y'	'&'				'abc'
		'abc'							'ababc'					'y'	'&'				'abc'
		'ab*c'							'abc'					'y'	'&'				'abc'
		'ab*bc'							'abc'					'y'	'&'				'abc'
		'ab*bc'							'abbc'					'y'	'&'				'abbc'
		'ab*bc'							'abbbbc'					'y'	'&'				'abbbbc'
		'ab+bc'							'abbc'					'y'	'&'				'abbc'
		'ab+bc'							'abc'					'n'	'-'				'-'
		'ab+bc'							'abq'					'n'	'-'				'-'
		'ab+bc'							'abbbbc'					'y'	'&'				'abbbbc'
		'ab?bc'							'abbc'					'y'	'&'				'abbc'
		'ab?bc'							'abc'					'y'	'&'				'abc'
		'ab?bc'							'abbbbc'					'n'	'-'				'-'
		'ab?c'							'abc'					'y'	'&'				'abc'
		'^abc$'							'abc'					'y'	'&'				'abc'
		'^abc$'							'abcc'					'n'	'-'				'-'
		'^abc'							'abcc'					'y'	'&'				'abc'
		'^abc$'							'aabc'					'n'	'-'				'-'
		'abc$'							'aabc'					'y'	'&'				'abc'
		'^'								'abc'					'y'	'&'				''
"		'$'								'abc'					'y'	'&'				''				"
		'a.c'								'abc'					'y'	'&'				'abc'
		'a.c'								'axc'					'y'	'&'				'axc'
		'a.*c'							'axyzc'					'y'	'&'				'axyzc'
		'a.*c'							'axyzd'					'n'	'-'				'-'
		'a[bc]d'							'abc'					'n'	'-'				'-'
		'a[bc]d'							'abd'					'y'	'&'				'abd'
		'a[b-d]e'						'abd'					'n'	'-'				'-'
		'a[b-d]e'						'ace'					'y'	'&'				'ace'
		'a[b-d]'							'aac'					'y'	'&'				'ac'
		'a[-b]'							'a-'						'y'	'&'				'a-'
		'a[b-]'							'a-'						'y'	'&'				'a-'
		'[k]'								'ab'						'n'	'-'				'-'
		'a[b-a]'							'ab'						'n'	'-'				'-'
		'a[]b'							'-'						'c'	'-'				'-'
		'a['								'-'						'c'	'-'				'-'
		'a]'								'a]'						'y'	'&'				'a]'
		'a[]]b'							'a]b'					'y'	'&'				'a]b'
		'a[^bc]d'						'aed'					'y'	'&'				'aed'
		'a[^bc]d'						'abd'					'n'	'-'				'-'
		'a[^-b]c'						'adc'					'y'	'&'				'adc'
		'a[^-b]c'						'a-c'					'n'	'-'				'-'
		'a[^]b]c'							'a]c'						'n'	'-'				'-'
		'a[^]b]c'							'adc'					'y'	'&'				'adc'
		'ab|cd'							'abc'					'y'	'&'				'ab'
		'ab|cd'							'abcd'					'y'	'&'				'ab'
		'()ef'							'def'						'c'	'&-\1'			'ef-'
		'()*'								'-'						'c'	'-'				'-'
"		'*a'								'-'						'c'	'-'				'-'				"
"		'^*'							'-'						'c'	'-'				'-'				"
"		'$*'								'-'						'c'	'-'				'-'				"
"		'(*)b'							'-'						'c'	'-'				'-'				"
"		'$b'								'b'						'n'	'-'				'-'				"
"		'a\'								'-'						'c'	'-'				'-'				"
		'a\(b'							'a(b'					'y'	'&-\1'			'a(b-'
		'a\(*b'							'ab'						'y'	'&'				'ab'
		'a\(*b'							'a((b'					'y'	'&'				'a((b'
		'a\\b'							'a\b'						'y'	'&'				'a\b'	
		'abc)'							'-'						'y'	'-'				'-'
		'(abc'							'-'						'c'	'-'				'-'
		'((a))'							'abc'					'y'	'&-\1-\2'		'a-a-a'
		'(a)b(c)'							'abc'					'y'	'&-\1-\2'		'abc-a-c'
		'a+b+c'							'aabbabc'				'y'	'&'				'abc'
		'a**'							'-'						'y'	'-'				'-'
		'a*?'							'-'						'y'	'-'				'-'
		'(a*)*'							'-'						'y'	'-'				'-'
		'(a*)+'							'-'						'y'	'-'				'-'
		'(a|)*'							'-'						'c'	'-'				'-'
		'(a*|b)*'						'-'						'y'	'-'				'-'
		'(a+|b)*'						'ab'						'y'	'&-\1'			'ab-b'
		'(a+|b)+'						'ab'						'y'	'&-\1'			'ab-b'
		'(a+|b)?'							'ab'						'y'	'&-\1'			'a-a'
		'[^ab]*'							'cde'					'y'	'&'				'cde'
"		'(^)*'							'-'						'c'	'-'				'-'				"
		'(ab|)*'							'-'						'c'	'-'				'-'
		')('								'-'						'c'	'-'				'-'
"		''								'abc'					'y'	'&'				''				"
		'abc'							''						'n'	'-'				'-'
"		'a*'								''						'y'	'&'				''				"
		'abcd'							'abcd'					'y'	'&-\&-\\&'		'abcd-&-\abcd'
		'a(bc)d'							'abcd'					'y'	'\1-\\1-\\\1'		'bc-\1-\bc'
		'([abc])*d'						'abbbcd'					'y'	'&-\1'			'abbbcd-c'
		'([abc])*bcd'					'abcd'					'y'	'&-\1'			'abcd-a'
		'a|b|c|d|e'						'e'						'y'	'&'				'e'
		'(a|b|c|d|e)f'						'ef'						'y'	'&-\1'			'ef-e'
		'((a*|b))*'						'-'						'y'	'-'				'-'
		'abcd*efg'						'abcdefg'				'y'	'&'				'abcdefg'
		'ab*'							'xabyabbbz'				'y'	'&'				'ab'
		'ab*'							'xayabbbz'				'y'	'&'				'a'
		'(ab|cd)e'						'abcde'					'y'	'&-\1'			'cde-cd'	
		'[abhgefdc]ij'						'hij'						'y'	'&'				'hij'
		'^(ab|cd)e'						'abcde'					'n'	'x\1y'			'xy'
"		'(abc|)ef'						'abcdef'					'y'	'&-\1'			'ef-'			"
		'(a|b)c*d'						'abcd'					'y'	'&-\1'			'bcd-b'
		'(ab|ab*)bc'						'abc'					'y'	'&-\1'			'abc-a'
		'a([bc]*)c*'						'abc'					'y'	'&-\1'			'abc-bc'
		'a([bc]*)(c*d)'					'abcd'					'y'	'&-\1-\2'		'abcd-bc-d'
		'a([bc]+)(c*d)'					'abcd'					'y'	'&-\1-\2'		'abcd-bc-d'
		'a([bc]*)(c+d)'					'abcd'					'y'	'&-\1-\2'		'abcd-b-cd'
		'a[bcd]*dcdcde'					'adcdcde'				'y'	'&'				'adcdcde'
		'a[bcd]+dcdcde'					'adcdcde'				'n'	'-'				'-'
		'(ab|a)b*c'						'abc'					'y'	'&-\1'			'abc-ab'
		'((a)(b)c)(d)'						'abcd'					'y'	'\1-\2-\3-\4'	'abc-a-b-d'
		'[\ -~]*'						'abc'					'y'	'&'				'abc'
		'[\ -~\ -~]*'					'abc'					'y'	'&'				'abc'
		'[\ -~\ -~\ -~]*'				'abc'					'y'	'&'				'abc'
		'[\ -~\ -~\ -~\ -~]*'			'abc'					'y'	'&'				'abc'
		'[\ -~\ -~\ -~\ -~\ -~]*'		'abc'					'y'	'&'				'abc'
		'[\ -~\ -~\ -~\ -~\ -~\ -~]*'	'abc'					'y'	'&'				'abc'
"		'[ -~ -~ -~ -~ -~ -~ -~]*'	'abc'					'y'	'&'				'abc'			"
		'[a-zA-Z_][a-zA-Z0-9_]*'		'alpha'					'y'	'&'				'alpha'
		'^a(bc+|b[eh])g|.h$'				'abh'					'y'	'&-\1'			'bh-'
		'(bc+d$|ef*g.|h?i(j|k))'			'effgz'					'y'	'&-\1-\2'		'effgz-effgz-'
		'(bc+d$|ef*g.|h?i(j|k))'			'ij'						'y'	'&-\1-\2'		'ij-ij-j'
		'(bc+d$|ef*g.|h?i(j|k))'			'effg'					'n'	'-'				'-'
		'(bc+d$|ef*g.|h?i(j|k))'			'bcdd'					'n'	'-'				'-'
		'(bc+d$|ef*g.|h?i(j|k))'			'reffgz'					'y'	'&-\1-\2'		'effgz-effgz-'
		'((((((((((a))))))))))'				'-'						'y'	'-'				'-'
		'(((((((((a)))))))))'					'a'						'y'	'&'				'a'
		'multiple\ words\ of\ text'			'uh-uh'					'n'	'-'				'-'
		'multiple\ words'					'multiple words, yeah'	'y'	'&'				'multiple words'
		'(.*)c(.*)'						'abcde'					'y'	'&-\1-\2'		'abcde-ab-de'
		'\((.*),\ (.*)\)'					'(a, b)'					'y'	'(\2, \1)'			'(b, a)'
	)! !

!RegexpPatternTests methodsFor: 'tests-spencer' stamp: 'ess 5/30/2025 08:27:01'!
testSpencer

	| tests re string code source result |
	tests := self spencerTests.
	1
		to: tests size
		by: 5
		do: [ :index |
			re := tests at: index.
			string := tests at: (index + 1).
			code := tests at: (index + 2).
			source := tests at: (index + 3).
			result := tests at: (index + 4).
			self
				runSpencerTest: re
				match: string
				result: code
				substitute: source
				expect: result ]! !

!ReCompiler methodsFor: 'accessing' stamp: 'ess 5/30/2025 15:38:11'!
nextSlot

	| result |
	result := slotsUsed.
	slotsUsed := slotsUsed + 1.
	^ result! !

!ReCompiler methodsFor: 'as yet unclassified' stamp: 'ess 6/28/2025 11:08:32'!
parseErrorClass

	^ RegexpSyntaxError! !

!ReCompiler methodsFor: 'constants' stamp: 'ess 5/31/2025 08:34:48'!
anchorEscapes

	^ {
		$A	-> [ ReAnchorNode beginningOfInput ] .
		$Z	-> [ ReAnchorNode endOfInput ] .
		$b	-> [ ReAnchorNode wordBoundary ] .
		$B	-> [ ReAnchorNode notWordBoundary ] .
		$<	-> [ ReAnchorNode beginningOfWord ] .
		$>	-> [ ReAnchorNode endOfWord ]
	} asDictionary! !

!ReCompiler methodsFor: 'constants' stamp: 'ess 5/29/2025 10:16:24'!
characterEscapes

	^ `{
		$0	-> (Character codePoint: 0)		.  "NUL"
		$a	-> (Character codePoint: 7)		.  "BEL (alarm)"
		$e	-> (Character codePoint: 27)	.  "ESC"
		$f	-> (Character codePoint: 12)	.  "FF"
		$n	-> (Character codePoint: 10)	.  "LF"
		$r	-> (Character codePoint: 13)	.  "CR"
		$t	-> (Character codePoint: 9)		.  "TAB"
		$v	-> (Character codePoint: 11)	"VT"
	} asDictionary`! !

!ReCompiler methodsFor: 'initialization' stamp: 'ess 6/6/2025 07:29:57'!
initialize

	super initialize.
	slotsUsed := 0! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 6/3/2025 14:56:22'!
compile: aStringOrStream
	"May throw RegexpSyntaxError."

	| node |
	node := self parse: aStringOrStream.
	^ RegexpPattern
		compileProgram: node
		slotsNeeded: slotsUsed! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 18:27:32'!
maybeCompile: aStringOrStream
	"Answer nil instead of throwing an error when presented with an invalid regular expression."

	^ [ self compile: aStringOrStream ]
		on: RegexpSyntaxError
		do: [
			^ nil ]! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 16:04:06'!
parse

	| slot node |
	slot := self nextSlot.
	node := self readExpression.
	^ ReGroupNode
		with: node
		slot: slot! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 16:04:22'!
readAlternatives

	| result |
	result := self readConcatenation.
	self skipWhitespace.
	[ self match: $| ] whileTrue: [
		result := result or: self readConcatenation.
		self skipWhitespace ].	
	^ result! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/29/2025 10:17:33'!
readConcatenation

	| result |
	result := self readRepetition..
	self skipWhitespace.
	[ lookahead notNil and: [ ('|)' includes: lookahead) not ] ]
		whileTrue: [
			result := result and: self readRepetition.
			self skipWhitespace ].
	^ result! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 11/6/2024 06:07:21'!
readExpression

	^ self readAlternatives! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 11:25:09'!
readGroup

	| capturing slot node |
	capturing := true.
	(self match: $?) ifTrue: [
		(self match: $#) ifTrue: [
			self skipBlockComment.
			^ ReNullNode new ].
		(self match: $:) ifTrue: [
			capturing := false ] ].
	capturing ifTrue: [
		slot := self nextSlot ].
	node := self readExpression.
	self expect: $).
	^ ReGroupNode
		with: node
		slot: slot! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 6/6/2025 07:34:06'!
readInteger

	^ self readDigits! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 16:05:12'!
readRepetition

	| node char repeat |
	node := self readCharacter.
	(node isKindOf: ReAnchorNode) ifTrue: [
		^ node ].
	('*+?{' includes: lookahead) ifTrue: [
		char := self consume.
		char = $* ifTrue: [
			node := node repeatMin: 0 ].
		char = $+ ifTrue: [
			node := node repeatMin: 1 ].
		char = $? ifTrue: [
			node := node
				repeatMin: 0
				max: 1 ].
		char = ${ ifTrue: [
			repeat := self readRepetitionCount.
			repeat node: node.
			node := repeat ].
		(self match: $+) ifTrue: [
			node bePossessive ].
		(self match: $?) ifTrue: [
			node beNotGreedy ] ].
	^ node! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 16:05:37'!
readRepetitionCount

	| min max |	
	min := nil.
	max := nil.	
	self isDigit ifTrue: [
		min := self readInteger ].
	(self match: $}) ifTrue: [  "{n}"
		min ifNil: [  "Exclude {}"
			^ self syntaxError: 'Expected repetition count' ].
		^ ReRepetitionNode
			min: min
			max: min ].
	"{n,m} or {,m}"
	min := min ifNil: [ 0 ].
	self expect: $,.
	self isDigit ifTrue: [
		max := self readInteger ].
	self expect: $}.
	^ ReRepetitionNode
		min: min
		max: max! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 11:39:14'!
skipBlockComment

	[ lookahead notNil ] whileTrue: [
		(self match: $\)
			ifTrue: [
				self consume ]
			ifFalse: [
				(self match: $)) ifTrue: [
					^ self ].
				(self matchAll: '(?#')
					ifTrue: [
						self skipBlockComment ]
					ifFalse: [
						self consume ] ] ]! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 5/30/2025 16:06:37'!
skipLineComment

	| endOfLine |
	endOfLine := `{ nil . Character lf . Character cr }`.
	[ endOfLine statePointsTo: lookahead ] whileFalse: [
		self consume ].
	self match: `Character cr`.
	self match: `Character lf`! !

!ReCompiler methodsFor: 'parsing' stamp: 'ess 6/10/2025 14:17:59'!
skipWhitespace

	[ lookahead = $# or: [ self isSpace ] ]
		whileTrue: [
			(self match: $#) ifTrue: [
				self skipLineComment ].
			self skipSpaces ]! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 6/10/2025 14:17:02'!
readCharacter

	| character |
	self skipWhitespace.
	(self match: $() ifTrue: [
		^ self readGroup ].
	character := self consume.
	character = $\ ifTrue: [
		^ self readCharacterEscape ].
	character = $$ ifTrue: [
		^ ReAnchorNode endOfLine ].
	character = $. ifTrue: [
		^ ReCharacterNode wildcard: flags ].
	character = $[ ifTrue: [
		^ self readCharacterClass ].
	character = $^ ifTrue: [
		^ ReAnchorNode beginningOfLine ].
	^ ReCharacterNode
		character: character
		flags: flags! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 6/2/2025 08:11:21'!
readCharacterEscape

	| escape |

	"\0 \a \e \f \n \r \t \v"
	escape := self characterEscapes
		at: lookahead
		ifAbsent: [ nil ].
	escape ifNotNil: [
		self consume.
		^ ReCharacterNode
			character: escape ].

	"\< \> \A \B \Z \b"
	escape := self anchorEscapes
		at: lookahead
		ifAbsent: [ nil ].
	escape ifNotNil: [
		self consume.
		^ escape value ].

	"\D \S \W \d \s \w"
	(ReCharacterClass
		namedClass: lookahead
		flags: flags)
			ifNotNil: [ :namedClass |
				self consume.
				^ ReCharacterNode
					characterClass: namedClass ].

	"\cX control character"
	(self match: $c) ifTrue: [
		| control character |
		control := self consume codePoint \\ 32.
		character := Character codePoint: control.
		^ ReCharacterNode
			character: character ].
			
	"\p{ unicode property name or value}"
	((lookahead = $P)  or: [ lookahead = $p ]) ifTrue: [
		| p class |
		p := self consume.
		(self match: ${) ifFalse: [
			^ ReCharacterNode
				character: p
				flags: flags ].
		class := self readPropertyEscape.
		p = $P ifTrue: [
			class := class complement ].
			^ ReCharacterNode
				characterClass: class ].

	"\uXXXX or \u{X[1-6]} unicode escape"
	(self match: $u) ifTrue: [
		^ ReCharacterNode
			character: self readUnicodeEscape ].
			
	"\xXX \x{X[1-2]} hexadecimal escape"
	(self match: $x) ifTrue: [
		^ ReCharacterNode
			character: self readHexEscape ].

	"Handles \\ along with unnecessary escapes"
	^ ReCharacterNode
		character: self consume
		flags: flags! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 5/30/2025 15:53:41'!
readHexEscape

	| codepoint |
	(self match: ${)
		ifFalse: [
			codepoint := self readXDigits: 2 ]
		ifTrue: [
			codepoint := self
				readXDigitsFrom: 1
				to: 2.
			self expect: $} ].
	^ Character codePoint: codepoint! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 5/30/2025 15:18:41'!
readPropertyEscape

	| name |
	name := self readWord.
	name isEmptyOrNil ifTrue: [
		^ self syntaxError: 'Expected Unicode property name or value' ].
	self skipWhitespace.
	self expect: $}.
	^ ReCharacterClass
		unicodeProperty: name
		flags: flags! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 5/30/2025 15:54:20'!
readUnicodeEscape

	| codepoint |
	(self match: ${)
		ifFalse: [
			codepoint := self readXDigits: 4 ]
		ifTrue: [
			codepoint := self
				readXDigitsFrom: 1
				to: 6.
			self expect: $} ].
	^ Character codePoint: codepoint! !

!ReCompiler methodsFor: 'parsing-characters' stamp: 'ess 6/10/2025 14:17:08'!
readWord

	self skipWhitespace.
	^ String streamContents: [ :stream |
		[ self isWord ] whileTrue: [
			stream nextPut: self consume ] ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 6/2/2025 08:13:02'!
readCharacterClass

	^ ReCharacterNode
		characterClass: self readClassExpression! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 6/2/2025 09:35:31'!
readClassCharacter

	| character1 character2 |
	self skipWhitespace.
	character1 := self consume.
	character1 = $- ifTrue: [
		^ ReCharacterClass
			with: $- ].
	character1 = $\ ifTrue: [
		character1 := self readClassEscape ].
	character1 isCharacter ifFalse: [
		^ character1 ].
	self skipWhitespace.
	lookahead = $- ifFalse: [
		^ character1 ].
	self withSaveDo: [ :restore |
		self consume.
		lookahead = $] ifTrue: [
			^ ReCharacterClass
				with: character1
				with: $-
				flags: flags ].
		lookahead = $- ifTrue: [
			restore value.
			^ ReCharacterClass
				with: character1
				flags: flags ].
		character2 := self readClassCharacter.
		character2 isCharacter ifFalse: [
			restore value.
			^ ReCharacterClass
				with: character1
				flags: flags ].
		^ ReCharacterClass
			from: character1
			to: character2
			flags: flags ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/29/2025 13:15:41'!
readClassEscape

	| escape |

	"\0 \a \e \f \n \r \t \v"
	escape := self characterEscapes
		at: lookahead
		ifAbsent: [ nil ].
	escape ifNotNil: [
		^ escape ].

	"\D \S \W \d \s \w"
	(ReCharacterClass
		namedClass: lookahead
		flags: flags)
			ifNotNil: [ :namedClass |
				self consume.
				^ namedClass ].

	"\cX control character"
	(self match: $c) ifTrue: [
		| control |
		control := self consume codePoint \\ 32.
		^ Character codePoint: control ].

	"\p{ unicode property name or value}"
	(lookahead = $P  or: [ lookahead = $p ]) ifTrue: [
		| p class |
		p := self consume.
		(self match: ${) ifFalse: [
			^ p ].
		class := self readPropertyEscape.
		p = $P ifTrue: [
			class := class complement ].
		^ class ].

	"\uXXXX or \u{X[1-6]} unicode escape"
	(self match: $u) ifTrue: [
		^ self readUnicodeEscape ].
			
	"\xXX \x{X[1-2]} hexadecimal escape"
	(self match: $x) ifTrue: [
		^ self readHexEscape ].

	"Handles \\ along with unnecessary escapes"
	^ self consume! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 6/2/2025 09:18:11'!
readClassExpression

	| isComplement class |
	self skipWhitespace.
	isComplement := self match: $^.
	self skipWhitespace.
	class := lookahead = $]
		ifTrue: [ self readClassUnion ]
		ifFalse: [ self readClassSubtraction ].
	self skipWhitespace.
	self expect: $].
	^ isComplement
		ifTrue: [ class complement ]
		ifFalse: [ class ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/30/2025 15:58:19'!
readClassIntersection

	| result operand |
	result := self readClassUnion.
	self skipWhitespace.
	[ self match: $$ ] whileTrue: [
		self expect: $$.
		operand := self readClassUnion.
		result := result & operand.
		self skipWhitespace ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/30/2025 15:59:00'!
readClassName

	self isAlpha ifFalse: [
		^ self syntaxError: 'Expected character class' ].
	^ String streamContents: [ :stream |
		[ self isAlpha ] whileTrue: [
			stream nextPut: self consume ] ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/30/2025 15:59:16'!
readClassSubtraction

	| result operand |
	result := self readClassIntersection.
	self skipWhitespace.
	[ self match: $- ] whileTrue: [
		self expect: $-.
		operand := self readClassIntersection.
		result := result - operand.
		self skipWhitespace ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 6/2/2025 09:19:20'!
readClassUnion

	| result done operand c |
	result := ReCharacterClass empty: flags.
	done := false.
	self skipWhitespace.
	(self match: $]) ifTrue: [
		result add: $] ].
	[ done or: [ lookahead = $] ] ]
		whileFalse: [
			done := (self matchAll: '&&') or: [ self matchAll: '--' ].
			done ifFalse: [
				operand := (self match: $[)
					ifTrue: [ self readNestedClass ]
					ifFalse: [
						c := self readClassCharacter.
						c isCharacter
							ifFalse: [ c ]
							ifTrue: [
								ReCharacterClass
									with: c
									flags: flags ] ].
				result := result | operand.
				self skipWhitespace ] ].
	^ result! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/30/2025 16:00:30'!
readNestedClass

	self skipWhitespace.
	^ (self match: $:)
		ifTrue: [ self readPosixClass ]
		ifFalse: [ self readClassExpression ]! !

!ReCompiler methodsFor: 'parsing-classes' stamp: 'ess 5/29/2025 13:17:20'!
readPosixClass

	| name |
	self skipWhitespace.
	name := self readClassName.
	self skipWhitespace.
	self expect: $:.
	self skipWhitespace.
	self expect: $].
	^ ReCharacterClass
		posixClass: name
		flags: flags! !

!ReCompiler methodsFor: 'private' stamp: 'ess 5/30/2025 15:22:47'!
setIgnoreCase: ignoreCase multiLine: multiLine

	flags := ReFlags
		ignoreCase: ignoreCase
		multiLine: multiLine.
	^ self! !

!ReCompiler class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 15:22:11'!
ignoreCase: ignoreCase

	^ self
		ignoreCase: ignoreCase
		multiLine: nil! !

!ReCompiler class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 14:49:24'!
ignoreCase: ignoreCase multiLine: multiLine

	^ self new
		setIgnoreCase: ignoreCase
		multiLine: multiLine! !

!ReCompiler class methodsFor: 'instance creation' stamp: 'ess 5/30/2025 15:22:15'!
multiLine: multiLine

	^ self
		ignoreCase: nil
		multiLine: multiLine! !

!CharacterSequence methodsFor: '*Regexp-evaluating' stamp: 'ess 5/31/2025 07:57:54'!
allRangesOfRegexMatches: regexString
	"Answer an array of ranges of the matched substrings."
	"Each range is an array #(start end) with the inclusive bounds of the match."

	| result |
	result := regexString asRegex
		allMatches: self.
	^ result collect: [ :each |
		each spanOfGroup: 0 ]! !

!CharacterSequence methodsFor: '*Regexp-evaluating' stamp: 'ess 6/4/2025 09:07:43'!
allRegexMatches: regexString
	"Answer an array of matched substrings."
	"
	'Jack and Jill went up the hill' allRegexMatches: '\w+'
	>>> an OrderedCollection('Jack' 'and' 'Jill' 'went' 'up' 'the' 'hill')
	"

	^ regexString asRegex
		allMatchesAsStrings: self! !

!CharacterSequence methodsFor: '*Regexp-converting' stamp: 'ess 5/31/2025 07:59:15'!
asRegex
	"Compile this string as a regular expression."
	"May throw RegexpSyntaxError if string is not a valid regular expression."

	^ RegexpPattern
		fromString: self! !

!CharacterSequence methodsFor: '*Regexp-converting' stamp: 'ess 5/31/2025 07:59:36'!
asRegexIgnoringCase
	"Compile this string as a case-insensitive regular expression."
	"May throw RegexpSyntaxError if string is not a valid regular expression."

	^ RegexpPattern
		fromString: self
		ignoreCase: true! !

!CharacterSequence methodsFor: '*Regexp-copying' stamp: 'ess 5/31/2025 08:01:06'!
copyWithRegex: regexString matchesReplacedWith: aTemplateString
	"Answer a copy of this string with all matches of regexString replaced by an expansion of aTemplateString."

	^ regexString asRegex
		replaceAllIn: self
		with: aTemplateString! !

!CharacterSequence methodsFor: '*Regexp-copying' stamp: 'ess 5/31/2025 08:01:35'!
copyWithRegex: regexString matchesTranslatedUsing: aUnaryBlock
	"Answer a copy of this string with all matches of regexString replaced by an evaluation of aUnaryBlock."

	^ regexString asRegex
		replaceAllIn: self
		using: [ :each |
			aUnaryBlock value: (each groupAt: 0) ]! !

!CharacterSequence methodsFor: '*Regexp-testing' stamp: 'ess 6/4/2025 09:01:09'!
matchesRegex: regexString
	"True if the pattern given by regexString matches the entirety of this string."
	"
	'abacus' matchesRegex: '(a|b)+'
	>>> false
	"

	^ regexString asRegex
		fullyMatches: self! !

!CharacterSequence methodsFor: '*Regexp-testing' stamp: 'ess 6/4/2025 09:03:11'!
matchesRegexIgnoringCase: regexString
	"True if the case-insensitive pattern given by regexString matches the entirety of this string."
	"
	'ABBA' matchesRegexIgnoringCase: '(a|b)+'
	>>> true
	'Abacus' matchesRegexIgnoringCase: '(a|b)+'
	>>> false
	"

	^ regexString asRegexIgnoringCase
		fullyMatches: self! !

!CharacterSequence methodsFor: '*Regexp-testing' stamp: 'ess 6/4/2025 09:01:58'!
prefixMatchesRegex: regexString
	"True if the pattern given by regexString matches any prefix of this string."
	"
	'abacus' prefixMatchesRegex: '(a|b)+'
	>>> true
	"

	^ regexString asRegex
		matches: self! !

!CharacterSequence methodsFor: '*Regexp-testing' stamp: 'ess 6/4/2025 09:03:32'!
prefixMatchesRegexIgnoringCase: regexString
	"True if the case-insensitive pattern given by regexString matches any prefix of this string."
	"
	'Abacus' prefixMatchesRegexIgnoringCase: '(a|b)+'
	>>> true
	"

	^ regexString asRegexIgnoringCase
		matches: self! !

!CharacterSequence methodsFor: '*Regexp-evaluating' stamp: 'ess 6/4/2025 09:06:53'!
regex: regexString matchesCollect: aUnaryBlock
	"Answer an array with the results of evaluating aUnaryBlock on all substring matches."
	"
	'Jack meet Jill'
		regex: '\w+'
		matchesCollect: [:word | word size]
	>>> an OrderedCollection(4 4 4)
	"

	^ regexString asRegex
		allMatches: self
		asStringsCollect: aUnaryBlock! !

!CharacterSequence methodsFor: '*Regexp-evaluating' stamp: 'ess 6/4/2025 09:06:36'!
regex: regexString matchesDo: aUnaryBlock
	"Evaluate aUnaryBlock on all substring matches."
	"
	| list |
	list := OrderedCollection new.
	'Jack meet Jill'
		regex: '\w+'
		matchesDo: [:word | list add: word].
	list
	>>> an OrderedCollection('Jack' 'meet' 'Jill')
	"

	regexString asRegex
		allMatches: self
		asStringsDo: aUnaryBlock! !
