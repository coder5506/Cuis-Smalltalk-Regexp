# API

A [regular expression](https://en.wikipedia.org/wiki/Regular_expression)
is a sequence of characters that specifies a match pattern in text.
We compile regular expressions into [RegexpPattern](#regexppattern) objects to carry-out the matching.
A syntactically incorrect expression may generate a `RegexpSyntaxError` during compilation.
The successful execution of an `RegexpPattern` yields an [RegexpMatch](#regexpmatch) object with the details of the match.
An unsuccessful execution simply returns `nil`.

See

- [RegexpPattern](#regexppattern)
- [RegexpMatch](#regexpmatch)

## RegexpPattern

```smalltalk
RegexpPattern class>>#fromString: aCharacterSequence
  ignoreCase: ignoreCase
  multiLine: multiLine
```

Compile a regular expression to an `RegexpPattern`.
May throw a `RegexpSyntaxError` if the expression is not syntactically valid.

This can be abbreviated as

- `#fromString:ignoreCase:`
- `#fromString:multiLine:`
- `#fromString:`

`RegexpPattern class>>#from: aStringOrPattern` can be used when you have a pattern that may already be compiled.
It will either compile a string or return a compiled pattern unchanged.

```smalltalk
RegexpPattern>>#fullMatch: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Answers an `RegexpMatch` only if the pattern matches the entire substring, and answers `nil` otherwise.

All of the matching methods are available in various forms, accepting either, both, or neither of the optional indexing arguments
For example,

- `#fullMatch:startingAt:`
- `#fullMatch:endingAt:`
- `#fullMatch:`

```smalltalk
RegexpPattern>>#match: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Answer a `RegexpMatch` if the pattern matches at the beginning of the substring, not necessarily matching the entire substring.

```smalltalk
RegexpPattern>>#findIn: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Answer a `RegexpMatch` if the pattern matches anywhere in the substring.

```smalltalk
RegexpPattern>>#fullMatchAsString: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex

RegexpPattern>>#matchAsString: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

These are convenience methods that return the full text of the match instead of all the details, which are not always necessary.

```smalltalk
RegexpPattern>>#fullyMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex

RegexpPattern>>#matches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Simply return `Boolean` success or failure.

```smalltalk
RegexpPattern>>#indexIn: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Returns only the starting index of the match, or zero, without the match details.

```smalltalk
RegexpPattern>>#allMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  do: aUnaryBlock

RegexpPattern>>#allMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  asStringsDo: aUnaryBlock
```

Iterate through all non-overlapping matches in the input, executing the block with each match.

```smalltalk
RegexpPattern>>#allMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  collect: aUnaryBlock

RegexpPattern>>#allMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  asStringCollect: aUnaryBlock
```

Iterate, returning a collection of the results.

```smalltalk
RegexpPattern>>#allMatches: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex

RegexpPattern>>#allMatchesAsStrings: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Return collections of the results.

```smalltalk
RegexpPattern>>#tokensIn: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Is simply an alias for `#allMatchesAsStrings:`.

```smalltalk
RegexpPattern>>#separateSubstringsOf: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
```

Returns a collection of the bits between the tokens.

```smalltalk
RegexpPattern>>#replaceIn: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  with: aTemplateString

RegexpPattern>>#replaceAllIn: aCharacterSequence
  startingAt: startIndex
  endingAt: endIndex
  with: aTemplateString
```

Replace first occurrence or all occurrences of matches. See `RegexpMatch>>#expand:` for details about the template string.

## RegexpMatch

`RegexpMatch>>#expand: aTemplateString` replaces numeric \1, \2 and named \k\<name> references. Use \\\\ for a literal backslash.

`RegexpMatch>>#groupAt:` answers submatch string by name or numeric key. `0` is the full match.

`RegexpMatch>>#groups` answers a sequence of all submatches 1 to `lastIndex`. Does not include the full match `0`.

`RegexpMatch>>#namedGroups` is a dictionary of the named submatches.

`RegexpMatch>>#startOfGroup:` and `RegexpMatch>>#endOfGroup:` return the start and end indexes, respectively, of the matches.
`RegexpMatch>>#spanOfGroup:` returns both the start and end as a `Point`, i.e., `(match startOfGroup: i) @ (match endOfGroup: i)`.

`RegexpMatch>>#pattern` is the instance of `RegexpPattern` that generated the match.
`RegexpMatch>>#string` is the original string the match executed against.
`RegexpMatch>>#startingAt` and `RegexpMatch>>#endingAt` are the `startIndex` and `endIndex` passed to the match function.

`RegexpMatch>>#lastIndex` is the index of the last numbered submatch in the pattern, and `RegexpMatch>>#lastGroup` is the last named submatch in the pattern.
