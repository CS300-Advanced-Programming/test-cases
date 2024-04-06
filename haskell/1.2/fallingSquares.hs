import Code
import Test.HUnit

testCase1 = TestCase (assertEqual " " [100, 101, 102, 103, 104, 105, 106, 113] 
                    (fallingSquares [[50, 100], [55, 1], [60, 2], [65, 3], [70, 4], [75, 5], [80, 6], [85, 7]]))

testCase2 = TestCase (assertEqual " " [1, 1, 2, 6, 8, 5]
                    (fallingSquares [[1, 1], [2, 1], [3, 2], [2, 4], [1, 2], [6, 5]] ))

testCase3 = TestCase (assertEqual " " [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
                    (fallingSquares [[10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1],
                     [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1], [10, 1]]))

testCase4 = TestCase (assertEqual " " [5, 7, 2, 5, 9, 8]
                    (fallingSquares [[1, 5], [2, 2], [7, 2], [6, 3], [3, 2], [2, 1]]))


testCase5 = TestCase (assertEqual " " [30, 60, 90, 35, 70, 105]
                    (fallingSquares [[300, 30], [320, 30], [340, 30], [315, 5], [325, 10], [335, 15]] ))

testCase6 = TestCase (assertEqual " " [50, 150, 175, 250, 300, 400]
                    (fallingSquares [[100, 50], [120, 100], [140, 25], [160, 75], [180, 50], [200, 100]]))

testCase7 = TestCase (assertEqual " " [30, 50, 60, 100, 120, 130]
                    (fallingSquares [[10, 30], [15, 20], [20, 10], [25, 40], [30, 20], [35, 10]]))

testCase8 = TestCase (assertEqual " " [25, 75, 100, 175, 225, 250]
                    (fallingSquares [[200, 25], [210, 50], [220, 25], [230, 75], [240, 50], [250, 25]]))

main::IO()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, testCase5,
                 testCase6, testCase7, testCase8]
    return ()