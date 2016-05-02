[![Build Status](https://travis-ci.org/mgduk/plrl.svg?branch=master)](https://travis-ci.org/mgduk/plrl)
[![GitHub issues](https://img.shields.io/github/issues/mgduk/plrl.svg)](https://github.com/mgduk/plrl/issues)

Returns a string with a quantity and pluralised/singularised noun and optional prefix

Examples
--------
```js
plrl = require('plrl')

// called with just a quantity and a noun:
plrl(1, 'cat')
// => "one cat"

// called with the optional prefix word:
plrl('is', 7, 'dwarf')
// => "are seven dwarves"

// behaviour for smaller and larger numbers:
for i in [0, 1, 2, 101] {
    console.log 'there ' + plrl('is', q, 'dalmation')
}
// => "there are no dalmations"
// => "there is one dalmation"
// => "there are two dalmations"
// => "there are 101 dalmations"
```

Usage
-----
```js
plrl = require('plrl')

plrl([prefix, ]quantity, noun);
```

- **prefix** — (optional) currently either 'is' or 'are', and will return the correct one for the plurality
- **quantity** — the number of `noun`s that there are
- **noun** — the thing that quantity is quantifying

Tests
-----
```
npm test
```

Licence
-------
```
MIT License

Copyright (c) 2016 Matt Dolan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```