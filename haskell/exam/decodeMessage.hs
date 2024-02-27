import Code
import Test.HUnit


test1 = TestCase (assertEqual "for ," 5 (decodeMessage "1111"))
test2 = TestCase (assertEqual "for ," 13 (decodeMessage "212121"))
test3 = TestCase (assertEqual "for ," 1 (decodeMessage "102"))
test4 = TestCase (assertEqual "for ," 1 (decodeMessage "6789"))
test5 = TestCase (assertEqual "for ," 3 (decodeMessage "77777123"))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5] 
    return ()