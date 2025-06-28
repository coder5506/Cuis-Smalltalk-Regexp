# Syntax

This document assumes you are already familiar with regular expressions and only need to know the flavor of the day.
For a more tutorial introduction,
[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions)
is as good a place as any to start.

The expression syntax is based on
[ECMAScript](https://tc39.es/ecma262/multipage/text-processing.html#sec-regexp-regular-expression-objects)
as that seems to be the de-facto standard.
It also borrows from [Perl5](https://perldoc.perl.org/perlre).

Changes from the ECMAScript standard include:[^3]

- "V-mode" is always enabled.
  - Both the input and the pattern are interpreted as Unicode strings.
  - Set operations (&&, --) are suported.
- Surrogates must always be paired (i.e., `\uXXXX\uXXXX`) because we're not matching UTF-16.
- Patterns are always multiline.
- Whitespace is never literal.
  - You need to escape spaces (i.e., "\ ") if you intend them as literals.
  - You can otherwise use whitespace liberally, and patterns can span multiple lines.
- Comments are supported.
  - `#` introduces a line comment, ignoring everything from that point to the end of the line.
  - `(?# ... )` is a block comment, which cannot include a literal `)`.
    Note that block comments can be inline or can span mulitple lines.
- Parsing is lenient.
  - It is not an error to use the "reserved for future expansion" double-punctuation characters, they are interpreted as (somewhat pointless) literals.
  - Any metacharacters that do not apply in their context in the pattern are also interpreted as literals.

Any other changes from the standard are errors.

[^3]: While many regular expression libraries support options for multiline patterns, whitespace literals, and comments,
I'm of the opinion that options to configure the _syntax_ of the expression are, at best, noise.  On the other hand, options to configure the _behavior_ of the expression are important and are therefore supported.

See

- [Metacharacters](#metacharacters)
- [Character escapes](#character-escapes)
- [Character classes](#character-classes)
- [Groups](#groups)
- [Quantifiers](#quantifiers)
- [Assertions](#assertions)

## Metacharacters

Metacharacters, or syntax characters, make up the syntax of the regular expression and do not represent literals to be matched.
Whitespace, both horizontal (blank) and vertical, is used for formatting and readability.
Any other characters represent literals to be matched.

Outside of a character class, the following are interpreted as metacharacters.

- `#` begins a line comment.
- `$` matches the end of a line (just before a newline or carriage return).
- `(` begins a group.
- `*`matches the previous atom zero-or-more times.
- <code>+</code> matches the previous atom one-or-more times.
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
- `?#` immediately after the opening `(` is a block comment that extends to the matching `)`.
  Block comments can nest but cannot otherwise contain unescaped ")" characters:
  `(?# (?# this) is commented)` and `(?# so is \) this)` , but `(?# (this) is not)`.

Character classes use a largely different set of metacharacters.

- `$` `(` `*` <code>+</code> `.` `?` `{` `|` are now literals
- `]` is literal only as the first character (or second, after `^`), and otherwise ends the class
- `^` as the first character complements the class, but is elsewhere literal
- <code>-</code> between two characters defines a range, but is elsewhere literal
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
- `\w` matches a "word" character.
  A word character is defined to include underscore `_` and any ASCII alphanumeric character `[0-9A-Za-z_]`. In a case-insensitive match, it also includes any character that case-folds to one of these characters.
- `\W` is the complement of `\w`
- `\p{ unicode property name or value }` matches a Unicode character class
- `\p{ unicode propery name = value }` also matches a Unicode character class
- `\P` is the complement
- `\b` matches a word boundary. A word boundary is any position in the input that has a "word" character (`\w`) to one side (before or after) but not the other. It can match at the start or the end of the input, as there is necessarily no word character before the start or after the end.
- `\B` is the inverse of `b`: either both characters before and after the current position are word characters, or both are not. It cannot match the start of end of the input.
- `\A` matches the start of the input (in contrast to `^` matching the beginning of a line)
- `\Z` matches the end of the input (in contrast to `$` matching the end of a line)
- `\cC` (`C` is any ASCII character) matches a control character in the range 0 to 31, taking the value of `C` mod 32.
- `\uXXXX` (exactly four hexadecimal digits) matches a codepoint. Two adjacent Unicode escapes (`\uXXXX\uXXXX`) can be used to represent a character as a surrogate pair, but it still matches a single character.
- `\u{X...}` (one to six hexadecimal digits) is another way to match a codepoint.
- `\xXX` (exactly two hexadecimal digits) matches an ASCII character
- `\x{X...}` (one or two hexadecimal digits) is another way to match an ASCII character
- `\D...` (one or more decimal digits), without a leading zero (first digit must be 1 to 9), is a backreference. Case-insensitive backreferences can match case-insensitively.
- `\DDD` (exactly three octal digits) can be used to match an ASCII character only if it cannot be mistaken for a backreference

Any other character following a `\` represents a literal.
This includes but is not limited to metacharacters and whitespace.

Within a character class, most character escapes have the same value.

- `\B` `\A` `\Z` (positional anchors) do not have any special meaning
- `\b` represents backspace `\u0008`, losing it's positional interpretation

## Character classes

A basic character class `[` matches the union of all characters and classes listed within, up to the matching `]`.
The characters and classes within can be written either as literals or as
[escape sequences](#character-escapes).
Importantly, the escapes `\d` `\D` `\s` `\S` `\w` `\W` `\p` `\P` still define classes.

- `^` as the first character within a class turns it into a complement.
- `]` as the first character (or second, after `^`) is a literal. Anywhere else it ends the class.
- <code>-</code> between two character values (i.e., not classes, and not at the beginning or end of the definition, reperesents a character range. `[1-5]` is the same as `[12345]`.
- `[` introduces a nested character class, which may be but is not necessarily a POSIX class. Escape it `\[` to match a literal `[`.

Only in a nested class, `:` begins a POSIX class. (So `[[:digit:]]` but not `[:digit:]`.)
POSIX classes only match characters in the ASCII subset.
The supported POSIX classes are

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

- `&&` between two classes specifies the intersection of the classes.
- `--` between two classes specifies the difference of the classes.

## Groups

Outside of a character class, `(` begins a group.
Groups are capturing by default, and numbered from the left starting with 1.

- `)` is literal at the beginning of a group, but otherwise ends the group.
- `?` immediately after the opening `(` is an extenion
- `?#` immediately after the opening `(` is a block comment
- `(?:)` is a non-capturing group
- `(?<name>)` assigns a name to the group
- `(?=)` is a lookahead pattern
- `(?!)` is a negative lookahead pattern
- `(?<=)` is a lookbehind pattern
- `(?<!)` is a negative lookbehind pattern
- `(?flags-flags)` define local pattern options
- `(?flags-flags:)` is shorthand for defining local pattern options in a non-capturing group
- `(?^flags:)` so is this

## Quantifiers

- `*` zero or more
- <code>+</code> one or more
- `?` zero or one
- `{n}` exactly `n`
- `{n,m}` at least `n` but no more than `m`
- `{n,}` `n` or more
- `{,m}` zero to `m`
- `{}` zero or more

Quantifiers are greedy by default.
Append

- `?` to not be greedy
- <code>+</code> to be possessive (not allow anything other that the longest match)

## Assertions

- `$` end of line
- `^` beginning of line
- `\b` word boundary
- `\B` not a word boundary
- `\A` beginning of input
- `\Z` end of input
- `\<` beginning of word
- `\>` end of word
- `(?=)` lookahead
- `(?!)` negative lookahead
- `(?<=)` lookbehind
- `(?<!)` negative lookbehind
