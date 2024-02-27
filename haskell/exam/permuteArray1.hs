import Code
import Test.HUnit

test1 = TestCase (assertEqual "for ," [2, 0, 4, 2] (permuteArray [2, 0, 2, 4]))
test2 = TestCase (assertEqual "for ," [5, 7, 0, 6] (permuteArray [5, 6, 7, 0]))
test3 = TestCase (assertEqual "for ," [7, 8, 2, 9, 1, 0, 2, 9, 7, 3] (permuteArray [7, 8, 2, 9, 1, 0, 2, 9, 3, 7]))
test4 = TestCase (assertEqual "for ," [2, 3, 6, 5, 5, 7, 8, 9] (permuteArray [2, 3, 5, 9, 8, 7, 6, 5]))
test5 = TestCase (assertEqual "for ," [9, 8, 7, 6, 5, 4, 3, 2, 1] (permuteArray [9, 8, 7, 6, 5, 4, 3, 2, 1]))
test6 = TestCase (assertEqual "for ," [1, 1, 2, 5, 1, 1, 3] (permuteArray [1, 1, 2, 3, 5, 1, 1]))


main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6] 
    return ()