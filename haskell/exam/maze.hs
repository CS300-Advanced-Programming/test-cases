import Code
import Test.HUnit

test1 = TestCase (assertEqual "for ," 3  (mazeJourney [[5, 6, 7, 8], [-5, 2, 3, 4], [-10, 5, 8, 1]] 13))
test2 = TestCase (assertEqual "for ," 2 (mazeJourney [[(-11)]] 2))
test3 = TestCase (assertEqual "for ," 1 (mazeJourney [[1, 2, 3, 4, 2, 6], [2, 3, 9, 5, 0, 1], [-2, -2, -2, 2, -2, -2], [2, 9, 5, 4, 3, 1], [-3, 0, -4, -10, 3, 15], [5, 10, 6, 9, 10, 12]] 4))
test4 = TestCase (assertEqual "for ," 20 (mazeJourney [[(-1), (-1), (-1)], [(-1), (-1), (-2)], [(-1), (-1), (-5)]] 20))
test5 = TestCase (assertEqual "for ," 2 (mazeJourney [[1,2,3,4,5,6,2], [0,0,0,0,0,0,0], [1,2,3,4,5,6,18], [1,2,3,4,5,6,28], [1,2,3,4,5,6,38], [1,2,3,4,5,6,21], [1,2,3,4,5,6,18]] 4))
test6 = TestCase (assertEqual "for ," 3 (mazeJourney [[1,1,1,1],[2,2,2,2],[3,3,3,3]] 8))


main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6] 
    return ()