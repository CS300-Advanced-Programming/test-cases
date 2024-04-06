import Code
import Test.HUnit

testCase1 = TestCase (assertEqual " " Nil (swappingNodes (Nil :: Tree Int)))
inputtree1 :: Tree Int
inputtree1 = TreeNode (TreeNode Nil 5 Nil) 10 Nil
outputtree1 :: Tree Int
outputtree1 = TreeNode (TreeNode Nil 10 Nil) 5 Nil
testCase2 = TestCase (assertEqual " " outputtree1 (swappingNodes inputtree1))

inputtree2 :: Tree Int
inputtree2 = TreeNode (TreeNode Nil 3 Nil) 2 Nil
outputtree2 :: Tree Int
outputtree2 = TreeNode (TreeNode Nil 3 Nil) 2 Nil
testCase3 = TestCase (assertEqual " " outputtree2 (swappingNodes inputtree2))

inputtree3 :: Tree Int
inputtree3 = TreeNode (TreeNode Nil 3 Nil) 2 (TreeNode (TreeNode Nil 11 Nil) 9 Nil)
outputtree3 :: Tree Int
outputtree3 = TreeNode (TreeNode (TreeNode Nil 11 Nil) 9 Nil) 2 (TreeNode Nil 3 Nil)
testCase4 = TestCase (assertEqual " " outputtree3 (swappingNodes inputtree3))

inputtree4 :: Tree Int
inputtree4 = TreeNode (TreeNode Nil 10 Nil) 2 (TreeNode Nil 9 (TreeNode Nil 5 Nil))
outputtree4 :: Tree Int
outputtree4 = TreeNode  (TreeNode Nil 2 Nil) 5 (TreeNode Nil 9 (TreeNode Nil 10 Nil))
testCase5 = TestCase (assertEqual " " outputtree4 (swappingNodes inputtree4))

inputtree5 :: Tree Int
inputtree5 = TreeNode (TreeNode (TreeNode Nil 11 Nil) 10 (TreeNode Nil 7 Nil)) 16 (TreeNode (TreeNode Nil 6 Nil) 8 (TreeNode Nil 5 Nil))
outputtree5 :: Tree Int
outputtree5 = TreeNode (TreeNode Nil 5 Nil) 8 (TreeNode (TreeNode Nil 6 Nil) 16 (TreeNode (TreeNode Nil 11 Nil) 10 (TreeNode Nil 7 Nil)))
testCase6 = TestCase (assertEqual " " outputtree5 (swappingNodes inputtree5))

inputtree6 :: Tree Int
inputtree6 = TreeNode (TreeNode Nil 31 Nil) 23 (TreeNode (TreeNode Nil 2 Nil) 13 (TreeNode (TreeNode Nil 37 Nil) 3 Nil))
outputtree6 :: Tree Int
outputtree6 = TreeNode (TreeNode Nil 31 Nil) 23 (TreeNode (TreeNode Nil 2 Nil) 13 (TreeNode (TreeNode Nil 37 Nil) 3 Nil))
testCase7 = TestCase (assertEqual " " outputtree6 (swappingNodes inputtree6))

inputtree7 :: Tree Int
inputtree7 = TreeNode (TreeNode (TreeNode Nil 17 Nil) 7001 (TreeNode (TreeNode Nil 7 Nil) 26 Nil)) 13 (TreeNode (TreeNode (TreeNode Nil 29 Nil) 21 Nil) 14002 (TreeNode Nil 5 Nil))
outputtree7 :: Tree Int
outputtree7 = TreeNode (TreeNode (TreeNode Nil 7 Nil) 14002 (TreeNode Nil 5 Nil)) 26 (TreeNode (TreeNode Nil 17 Nil) 7001 (TreeNode (TreeNode (TreeNode Nil 29 Nil) 21 Nil) 13 Nil))
testCase8 = TestCase (assertEqual " " outputtree7 (swappingNodes inputtree7))

inputtree8 :: Tree Int
inputtree8 = TreeNode (TreeNode (TreeNode Nil 5101 (TreeNode Nil 4969 (TreeNode Nil 4973 Nil))) 2 (TreeNode Nil 19 Nil)) 11 (TreeNode (TreeNode Nil 6263 (TreeNode (TreeNode Nil 5351 (TreeNode (TreeNode Nil 5003 Nil) 7841 (TreeNode (TreeNode Nil 3121 Nil) 5503 Nil))) 5939 Nil)) 181081 (TreeNode Nil 101 Nil))
outputtree8 :: Tree Int
outputtree8 = TreeNode (TreeNode (TreeNode Nil 5101 (TreeNode Nil 4969 (TreeNode Nil 4973 Nil))) 2 (TreeNode Nil 19 Nil)) 11 (TreeNode (TreeNode Nil 6263 (TreeNode (TreeNode Nil 5351 (TreeNode (TreeNode Nil 5003 Nil) 7841 (TreeNode (TreeNode Nil 3121 Nil) 5503 Nil))) 5939 Nil)) 181081 (TreeNode Nil 101 Nil))
testCase9 = TestCase (assertEqual " " outputtree8 (swappingNodes inputtree8))

inputtree9 :: Tree Int
inputtree9 = TreeNode (TreeNode (TreeNode (TreeNode Nil 19927 Nil) 5101 (TreeNode (TreeNode (TreeNode (TreeNode Nil 1327 Nil) 22189 Nil) 7246 Nil) 4969 (TreeNode Nil 4973 (TreeNode Nil 3622 Nil)))) 1811 (TreeNode (TreeNode (TreeNode Nil 8269 Nil) 73009 Nil) 362162 (TreeNode Nil 106033 Nil))) 11 (TreeNode (TreeNode Nil 6263 (TreeNode (TreeNode Nil 5351 (TreeNode (TreeNode Nil 5003 Nil) 7841 (TreeNode (TreeNode Nil 3121 Nil) 5503 Nil))) 5939 Nil)) 181081 (TreeNode Nil 3623 Nil))
outputtree9 :: Tree Int
outputtree9 =TreeNode (TreeNode (TreeNode (TreeNode Nil 19927 Nil) 5101 (TreeNode (TreeNode Nil 3623 Nil) 4969 (TreeNode Nil 4973 (TreeNode Nil 1811 Nil)))) 3622 (TreeNode (TreeNode Nil 6263 (TreeNode (TreeNode Nil 5351 (TreeNode (TreeNode Nil 5003 Nil) 7841 (TreeNode (TreeNode Nil 3121 Nil) 5503 Nil))) 5939 Nil)) 181081 (TreeNode (TreeNode (TreeNode Nil 1327 Nil) 22189 Nil) 7246 Nil))) 11 (TreeNode (TreeNode (TreeNode Nil 8269 Nil) 73009 Nil) 362162 (TreeNode Nil 106033 Nil))
testCase10 = TestCase (assertEqual " " outputtree9 (swappingNodes inputtree9))




main :: IO ()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, 
                testCase5, testCase6, testCase7, testCase8, testCase9, 
                testCase10]
    return ()
