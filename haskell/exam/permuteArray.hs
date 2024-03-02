import Code
import Test.HUnit
import System.Environment (getArgs)

test1 = TestCase (assertEqual "for ," [2, 0, 4, 2] (permuteArray [2, 0, 2, 4]))
test2 = TestCase (assertEqual "for ," [5, 7, 0, 6] (permuteArray [5, 6, 7, 0]))
test3 = TestCase (assertEqual "for ," [7, 8, 2, 9, 1, 0, 2, 9, 7, 3] (permuteArray [7, 8, 2, 9, 1, 0, 2, 9, 3, 7]))
test4 = TestCase (assertEqual "for ," [2, 3, 6, 5, 5, 7, 8, 9] (permuteArray [2, 3, 5, 9, 8, 7, 6, 5]))
test5 = TestCase (assertEqual "for ," [9, 8, 7, 6, 5, 4, 3, 2, 1] (permuteArray [9, 8, 7, 6, 5, 4, 3, 2, 1]))
test6 = TestCase (assertEqual "for ," [1, 1, 2, 5, 1, 1, 3] (permuteArray [1, 1, 2, 3, 5, 1, 1]))
test7 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,14, 13] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14]))
test8 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,14, 1,2,3,13] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,1]))
test9 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,3,1,1,2] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,1,3,2,1]))

main :: IO ()
main = do
  args <- getArgs
  case args of
    ["test1"] -> runTestTT $ test1 >> return ()
    ["test2"] -> runTestTT $ test2 >> return ()
    ["test3"] -> runTestTT $ test3 >> return ()
    ["test4"] -> runTestTT $ test4 >> return ()
    ["test5"] -> runTestTT $ test5 >> return ()
    ["test6"] -> runTestTT $ test6 >> return ()
    ["test7"] -> runTestTT $ test7 >> return ()
    ["test8"] -> runTestTT $ test8 >> return ()
    ["test9"] -> runTestTT $ test9 >> return ()