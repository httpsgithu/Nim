import std/assertions

block:
  proc _() = echo "one"
  doAssert not compiles(_())
  proc _() = echo "two"
  doAssert not compiles(_())

block:
  type _ = int
  doAssert not (compiles do:
    let x: _ = 3)
  type _ = float
  doAssert not (compiles do:
    let x: _ = 3)
