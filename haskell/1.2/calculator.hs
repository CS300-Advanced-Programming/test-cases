import Code
import Test.HUnit

testCase1 = TestCase (assertEqual " " 13 (calculator "4 * 5 - 7"))
testCase2 = TestCase (assertEqual " " 11 (calculator "10 / 2 + 6"))
testCase3 = TestCase (assertEqual " " 25 (calculator "(8 + 2) * 3 - 10 / 2" ))
testCase4 = TestCase (assertEqual " " 24 (calculator "18 / (2 + 1) * 4"))
testCase5 = TestCase (assertEqual " " 16 (calculator "(5 - 2) * (8 / 4) + 10"))
testCase6 = TestCase (assertEqual " " 6 (calculator "20 - (4 * 5) + (12 / 2)"))
testCase7 = TestCase (assertEqual " " 10 (calculator "((2 + 3) * 4) - 10"))
testCase8 = TestCase (assertEqual " " 7 (calculator "100 / (5 * 2) - 3"))
testCase9 = TestCase (assertEqual " " 10 (calculator "15 + (5 - (2 + 3) * 2)"))
testCase10 = TestCase (assertEqual " " 0 (calculator "-5 * (6 / (2 + 1)) + 10"))
testCase11 = TestCase (assertEqual " " 54 (calculator "((12 + 6) / 3 + 9) * 4 - (18 / (2 + 1))"))
testCase12 = TestCase (assertEqual " " 36 (calculator "(4 * (2 + 3) - 7) + (18 / 2) * (3 - 1) + 10 / 2"))
testCase13 = TestCase (assertEqual " " (-2) (calculator "(((6 * 3) / 2) + 10 - (4 + 5) * (2 + 1)) / (2 + (3 / (6 - 4)))"))
testCase14 = TestCase (assertEqual " " 33 (calculator "(20 - (2 * 10) + ((30 / (5 + 1)) * 3)) * (2 + 1) - (4 * (6 / 2))"))
testCase15 = TestCase (assertEqual " " 151 (calculator "((15 * 4) - (12 / 3)) + (28 / (7 - 3)) * (9 + (3 * (4 / 2))) - 10 + (-1) - (-1)"))

main :: IO ()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, testCase5,
                 testCase6, testCase7, testCase8, testCase9, testCase10, 
                 testCase11, testCase12, testCase13, testCase14, testCase15] 
    return ()