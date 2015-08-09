ZERO = 0

module.exports =
  sum: (one, two) ->
    one + two

  sub: (one, two) ->
    one - two

  mult: (one, two) ->
    return ZERO if one is ZERO or two is ZERO
    one * two

  div: (one, two) ->
    return ZERO if one is ZERO
    throw new Error("can't divide by zero") if two is ZERO
    one / two
