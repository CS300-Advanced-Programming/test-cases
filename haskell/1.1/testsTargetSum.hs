import Code
import Test.HUnit

testTargetSum1 = TestCase (assertEqual "for targetSum [1,2,3,4,5] 6, " [[4, 2], [5, 1]] (targetSum [1, 2, 3, 4, 5] 6))

testTargetSum2 = TestCase (assertEqual "for targetSum [1,2,3,4,5,6] 8, " [[5, 3], [6, 2]] (targetSum [1, 2, 3, 4, 5, 6] 8))

testTargetSum3 = TestCase (assertEqual "for targetSum [1,2,3,4,5] 10, " [] (targetSum [1, 2, 3, 4, 5] 10))

testTargetSum4 = TestCase (assertEqual "for targetSum [] 10, " [] (targetSum [] 10))

testTargetSum5 = TestCase (assertEqual "for targetSum [1,1,2,3,4,5,6] 7, " [[4, 3], [5, 2], [6, 1], [6, 1]] (targetSum [1, 1, 2, 3, 4, 5, 6] 7))

testTargetSum6 = TestCase (assertEqual "for targetSum [1,2,2,3,4,5,6] 4, " [[2, 2], [3, 1]] (targetSum [1, 2, 2, 3, 4, 5, 6] 4))

testsTargetSum =
  TestList
    [ TestLabel "test1" testTargetSum1,
      TestLabel "test2" testTargetSum2,
      TestLabel "test3" testTargetSum3,
      TestLabel "test4" testTargetSum4,
      TestLabel "test5" testTargetSum5,
      TestLabel "test6" testTargetSum6
    ]

main :: IO ()
main = do
  runTestTT testsTargetSum >> return ()