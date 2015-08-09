expect     = require('chai').expect
operations = require('../lib/operations')

describe 'Operations', ->
  describe '#sum', ->
    it 'sums two numbers', ->
      expect(operations.sum 2, 3).to.eq 5

  describe '#sub', ->
    it 'substracts a number', ->
      expect(operations.sub 10, 7).to.eq 3

  describe '#mult', ->
    it 'multiply two numbers', ->
      expect(operations.mult 3, 6).to.eq 18

    describe 'when multiply by zero', ->
      it 'always returns zero', ->
        expect(operations.mult 3, 0).to.eq 0
        expect(operations.mult 10, 0).to.eq 0
        expect(operations.mult 0, 6).to.eq 0

  describe '#div', ->
    it 'divides a number', ->
      expect(operations.div 6, 3).to.eq 2

    describe 'when divide zero by another number', ->
      it 'always returns zero', ->
        expect(operations.div 0, 6).to.eq 0

    describe 'when divide by zero', ->
      it 'throws an error', ->
        fn = operations.div.bind operations, 5, 0
        expect(fn).to.throw Error, "can't divide by zero"
