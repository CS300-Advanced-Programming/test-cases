import Code
import Test.HUnit

test1 = TestCase (assertEqual "for ," " 2" (strEncoder "  "))
test2 = TestCase (assertEqual "for ," "a1A1a1 1A1a1" (strEncoder "aAa Aa"))
test3 = TestCase (assertEqual "for ," "!1@2#1$1%1^1&1*1(2)2" (strEncoder "!@@#$%^&*(())"))
test4 = TestCase (assertEqual "for ," "a3B2b3B2c3D3" (strEncoder "aaaBBbbbBBcccDDD"))
test5 = TestCase (assertEqual "for ," "{1[2{1[102o3O3]1_2]2}3" (strEncoder "{[[{[00oooOOO]__]]}}}"))
test6 = TestCase (assertEqual "for ," "93a2f315c2?3+5=2/2=2" (strEncoder "999aafff11111cc???+++++==//=="))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6] 
    return ()
