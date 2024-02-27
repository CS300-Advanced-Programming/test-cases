import Code
import Test.HUnit

test1 = TestCase (assertEqual "for ," [1, 2, 3] (listRotation [1, 2, 3] 0))
test2 = TestCase (assertEqual "for ," [8, 6, 12, 3] (listRotation [12, 3, 8, 6] 6))
test3 = TestCase (assertEqual "for ," [17, 12, 6, 12, 5, 9, 18] (listRotation [12, 5, 9, 18, 17, 12, 6] 3))
test4 = TestCase (assertEqual "for ," [8, 16, 16, 18, 18, 17, 0, 3, 3, 4, 1] (listRotation [18, 17, 0, 3, 3, 4, 1, 8, 16, 16, 18] (-7)))
test5 = TestCase (assertEqual "for ," [21, 16, 4, 10, 6, 19, 23, 5, 14, 9, 17, 20, 2, 12, 8] (listRotation [23, 5, 14, 9, 17, 20, 2, 12, 8, 21, 16, 4, 10, 6, 19] (-9)))
test6 = TestCase (assertEqual "for ," [14, 3, 14, 22, 4, 6, 9, 24, 4, 24, 9, 24, 25, 7, 9, 11, 14, 4, 6, 4, 5] (listRotation [9, 24, 25, 7, 9, 11, 14, 4, 6, 4, 5, 14, 3, 14, 22, 4, 6, 9, 24, 4, 24] (-11)))
test7 = TestCase (assertEqual "for ," [3,4,5,1,2] (listRotation [1,2,3,4,5] 11923))
test8 = TestCase (assertEqual "for ," [4,5,1,2,3] (listRotation [1,2,3,4,5] (-11923)))
main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6, test7, test8] 
    return ()