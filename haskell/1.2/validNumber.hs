import Code
import Test.HUnit


testCase1 = TestCase (assertEqual " " False (validNumber " 5.981e"))
testCase2 = TestCase (assertEqual " " True  (validNumber "1"))
testCase3 = TestCase (assertEqual " " True (validNumber " 0.000000000000000001912 "))
testCase4 = TestCase (assertEqual " " False (validNumber "abcdefghijklaz"))
testCase5 = TestCase (assertEqual " " False (validNumber "0.000000000000000000000000000000000-100000000000000000000000000000000000000000000000000000000.00000000000000000000000005"))
testCase6 = TestCase (assertEqual " " False (validNumber "0.642.10"))
testCase7 = TestCase (assertEqual " " False (validNumber " --5.012"))
testCase8 = TestCase (assertEqual " " True (validNumber " 2.001"))
testCase9 = TestCase (assertEqual " " False (validNumber "42069-800815"))
testCase10 = TestCase (assertEqual " " False (validNumber " 2.001e-1"))
testCase11 = TestCase (assertEqual " " True (validNumber " +90"))
testCase12 = TestCase (assertEqual " " True (validNumber " -90.   "))
testCase13 = TestCase (assertEqual " " True (validNumber "9.312789310279321838120030321"))


main :: IO ()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, 
                            testCase5, testCase6, testCase7, testCase8, 
                            testCase9, testCase10, testCase11, testCase12,
                            testCase13] 
    return ()


