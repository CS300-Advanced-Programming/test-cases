import Code
import Test.HUnit

test7 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,14, 13] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14]))
test8 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,14, 1,2,3,13] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,1]))
test9 = TestCase (assertEqual "for ," [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,3,1,1,2] (permuteArray [1,2,3,4,5,6,7,8,9,10,11,12,13,14,3,2,1,3,2,1]))


main :: IO ()
main = do
    runTestTT $ TestList [test7, test8, test9] 
    return ()