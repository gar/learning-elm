module Tests exposing (..)

import String
import ElmTest exposing (..)

tests : Test
tests =
  suite "A Test Suite"
  [ defaultTest (assert True)
  , defaultTest (assertEqual 5 5)
  , test "Addition equal" (assertEqual (3 + 7) 10)
  , test "Addition not equal" (assertNotEqual (3 + 8) 10)
  ]

main : Program Never
main =
  runSuite tests
