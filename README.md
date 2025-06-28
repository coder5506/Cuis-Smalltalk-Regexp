# Cuis-Smalltalk-Regexp

This package implements linear-time[^1] regular expression matching for
[Cuis Smalltalk](https://cuis.st/),
with full
[Unicode](https://github.com/coder5506/Cuis-Smalltalk-Unicode) support,
that runs in space proportional only to the size of the pattern.

[^1]: Linear-time so long as you do not use look-ahead/-behind patterns or backreferences, all of which necessarily recur.
See also [status](#status).

This package is intended to update the older
[Regex](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Regex)
package originally ported from
[Squeak](https://map.squeak.org/package/c32158f2-ab2c-49c4-8451-d920dcf1023c/autoversion/1)
which, in turn, was based on an older package originally written for VisualWorks in 1996.
This is a new
[implementation](#implementation)
supporting Unicode and providing many newer features most have come to expect from regular expression libraries.

Do note that this new implementation is not significantly faster on "normal" regular expressions,[^2]
but rather avoids exponential slowdowns caused by pathological expressions.
Also, aside from the Unicode support,
most of the new features are merely conveniences
and do not introduce new capabilities unavailable in the older library.

[^2]: There have been some optimizations, primarily in search,
and more are planned,
but for now performance should not be considered a reason to prefer this package to the older one.

See

- [API](Documentation/API.md)
- [Syntax](Documentation/Syntax.md)
- [Notes](#implementation)

See also chapter 6 of [Deep into Pharo](https://books.pharo.org/deep-into-pharo/index.html), available [separately](https://scg.unibe.ch/archive/papers/Nier13aRegEx.pdf), or the corresponding documentation from

- [Cincom](https://www.cincomsmalltalk.com/main/2011/05/regex-not-so-regular/),
- [Dolphin](https://www.dartois.eu/regex/en/index.html), also
  [here](https://www.dartois.eu/regex/en/intro-en.html) and
  [downloadable](https://www.dartois.eu/regex/regex.rtf),
- or [Smalltalk/X](https://live.exept.de/doc/online/english/programming/goody_regex.html).

## Status

Not all planned features are yet implemented.
In particular,
look-ahead/-behind patterns and backreferences are not implemented,
and set operations are not well tested.
That said, all
[Regex](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Regex)
features from the older library are fully-supported,
and all tests pass.

It is planned to optimize matching Unicode strings by performing byte-level matching on their UTF-8 encoding,
but this optimization is not yet implemented.

## License

[MIT License](LICENSE)

## Dependencies

Requires
[Cuis-Smalltalk-Unicode](https://github.com/coder5506/Cuis-Smalltalk-Unicode).

## Implementation

This package implements the "virtual machine" approach to regular expression matching, pioneered by Ken Thompson and later
[documented](https://swtch.com/~rsc/regexp/) by Russ Cox.

Essentially, a regular expression (`RegexpPattern`) is compiled (`ReCompiler`) to a sequence of instructions (`ReProgram`) where the position of the instruction in the sequence implicitly represents the state of the match as it might be encoded in a finite automata.
This approach is more flexible than simulating a finite automata directly, because it is easy customize the instructions to the needs of the matcher.

The program is then executed (`ReProcess`) as a collection of "threads"(`ReThread`), each thread having its own `counter` to represent its state.
The collection of threads together simulate a non-deterministic finite automata executing the match.

Thompson further had the idea to execute the threads together, iterating through each character of the input and giving each thread a timeslice in which to process that character.
As the state of each thread is determined entirely by its program counter, the number of possible threads is limited to the number instructions, ensuring the program runs in space bounded by the size of the pattern, independent of the size of the input.

## Contributing

[Issues](https://github.com/coder5506/Cuis-Smalltalk-Regexp/issues)
preferably,
where the best contribution would be a failing test case.
