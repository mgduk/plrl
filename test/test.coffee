chai = require 'chai'
expect = chai.expect
plrl = require '../src/plrl'

tests =
    "one cat": [1, 'cat']
    "are seven dwarves": ['is', 7, 'dwarf']
    "are seven dwarves": ['are', 7, 'dwarves']
    "are no dalmations": ['is', 0, 'dalmation']
    "are no dalmations": ['are', 0, 'dalmations']
    "is one dalmation": ['is', 1, 'dalmations']
    "is one dalmation": ['are', 1, 'dalmations']
    "are two dalmations": ['is', 2, 'dalmation']
    "are 101 dalmations": ['is', 101, 'dalmation']
    "101 dalmations": [101, 'dalmation']
    "one alias": [1, 'aliases']
    "two aliases": [2, 'alias']

incorrectParametersTests = [
    []
    [101]
    ['dwarf']
    [1, 2, 3, 4]
]

describe 'plrl', ->
    for s, a of tests
        it "outputs \"#{s}\" given #{JSON.stringify a}", do (s, a) -> -> expect(plrl.apply(this, a)).to.equal s
    for a in incorrectParametersTests
        it "throws given incorrect parameters #{JSON.stringify a}", do (a) -> -> expect(plrl.bind.apply(plrl, [null].concat(a))).to.throw Error
