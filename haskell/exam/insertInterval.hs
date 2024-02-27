import Code
import Test.HUnit

test1 = TestCase (assertEqual "for ," [[-5, -2], [0, 2], [4, 5], [11, 12]] (insertInterval [[0, 2], [4, 5], [11, 12]] [-5, -2]))
test2 = TestCase (assertEqual "for ," [[9, 32], [35, 250], [281, 325]] (insertInterval [[9, 32], [80, 250], [281, 325]] [35, 90]))
test3 = TestCase (assertEqual "for ," [[1,2], [11, 12], [17, 22], [55, 75]] (insertInterval [[1,2], [11, 12], [55, 75]] [17, 22]))
test4 = TestCase (assertEqual "for ," [[3, 15]] (insertInterval [] [3, 15]))
test5 = TestCase (assertEqual "for ," [[11, 32], [36, 750]] (insertInterval [[11, 32], [36, 750]] [250, 325] ))
test6 = TestCase (assertEqual "for ," [[1, 11]] (insertInterval [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]] [2, 11]))
test7 = TestCase (assertEqual "for ," [[1, 6], [7, 8], [9, 10]] (insertInterval [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]] [2, 5]))
test8 = TestCase (assertEqual "for ," [[1, 8], [9, 10]] (insertInterval [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]] [2, 7]))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6, test7, test8] 
    return ()