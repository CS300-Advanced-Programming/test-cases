import Code
import Test.HUnit

test1 = TestCase (assertEqual "for kthSmallestElement (TreeNode (TreeNode (TreeNode Nil 1 Nil) 2 Nil) 3 (TreeNode Nil 6 Nil)) 4, "
                    6 (kthSmallestElement (TreeNode (TreeNode (TreeNode Nil 1 Nil) 2 Nil) 3 (TreeNode Nil 6 Nil)) 4))
test2 = TestCase (assertEqual "for kthSmallestElement (TreeNode (TreeNode (TreeNode Nil 2 Nil) 4 (TreeNode Nil 5 Nil)) 6 Nil) 3, " 
                    5 (kthSmallestElement (TreeNode (TreeNode (TreeNode Nil 2 Nil) 4 (TreeNode Nil 5 Nil)) 6 Nil) 3))
test3 = TestCase (assertEqual "for kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 4 Nil)) 6 (TreeNode Nil 7 Nil)) 8 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 10 Nil) 12 (TreeNode Nil 14 Nil))) 7, " 
                    9 (kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 4 Nil)) 6 (TreeNode Nil 7 Nil)) 8 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 10 Nil) 12 (TreeNode Nil 14 Nil))) 7))
test4 = TestCase (assertEqual "kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 (TreeNode Nil 4 Nil))) 5 (TreeNode (TreeNode (TreeNode Nil 6 Nil) 7 Nil) 8 (TreeNode Nil 9 Nil))) 10 (TreeNode (TreeNode (TreeNode Nil 11 Nil) 12 (TreeNode (TreeNode Nil 13 Nil) 14 Nil)) 16 (TreeNode Nil 18 Nil))) 13, "
                    13 (kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 (TreeNode Nil 4 Nil))) 5 (TreeNode (TreeNode (TreeNode Nil 6 Nil) 7 Nil) 8 (TreeNode Nil 9 Nil))) 10 (TreeNode (TreeNode (TreeNode Nil 11 Nil) 12 (TreeNode (TreeNode Nil 13 Nil) 14 Nil)) 16 (TreeNode Nil 18 Nil))) 13))
test5 = TestCase (assertEqual "for kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 (TreeNode Nil 3 (TreeNode Nil 4 Nil))) 6 (TreeNode Nil 8 Nil)) 10 (TreeNode Nil 12 Nil)) 14 (TreeNode Nil 16 (TreeNode Nil 18 (TreeNode Nil 19 Nil)))) 20 (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 21 Nil) 22 Nil) 23 Nil) 24 Nil) 31 (TreeNode Nil 33 Nil)) 34 (TreeNode (TreeNode (TreeNode Nil 35 Nil) 37 Nil) 39 (TreeNode (TreeNode Nil 41 Nil) 44 Nil)))) 17, "
                    31 (kthSmallestElement (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 (TreeNode Nil 3 (TreeNode Nil 4 Nil))) 6 (TreeNode Nil 8 Nil)) 10 (TreeNode Nil 12 Nil)) 14 (TreeNode Nil 16 (TreeNode Nil 18 (TreeNode Nil 19 Nil)))) 20 (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 21 Nil) 22 Nil) 23 Nil) 24 Nil) 31 (TreeNode Nil 33 Nil)) 34 (TreeNode (TreeNode (TreeNode Nil 35 Nil) 37 Nil) 39 (TreeNode (TreeNode Nil 41 Nil) 44 Nil)))) 17))
tree1 = (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 Nil) 5 Nil) 7 Nil) 10 (TreeNode (TreeNode (TreeNode Nil 12 (TreeNode Nil 14 (TreeNode Nil 15 Nil))) 16 (TreeNode Nil 19 Nil)) 20 (TreeNode Nil 22 (TreeNode Nil 23 (TreeNode Nil 24 Nil))))) 25 (TreeNode (TreeNode Nil 26 (TreeNode (TreeNode Nil 27 Nil) 29 Nil)) 30 (TreeNode (TreeNode Nil 32 (TreeNode Nil 34 (TreeNode Nil 36 (TreeNode (TreeNode Nil 37 Nil) 38 Nil)))) 40 (TreeNode (TreeNode Nil 41 (TreeNode Nil 42 (TreeNode Nil 43 (TreeNode Nil 44 Nil)))) 45 (TreeNode (TreeNode Nil 46 Nil) 48 Nil))))) 50 (TreeNode (TreeNode (TreeNode (TreeNode Nil 51 (TreeNode Nil 53 Nil)) 55 (TreeNode Nil 57 (TreeNode Nil 58 (TreeNode Nil 59 Nil)))) 60 (TreeNode (TreeNode (TreeNode Nil 62 (TreeNode Nil 64 (TreeNode Nil 66 (TreeNode (TreeNode Nil 67 Nil) 69 Nil)))) 70 Nil) 72 (TreeNode Nil 74 Nil))) 75 (TreeNode (TreeNode (TreeNode (TreeNode Nil 76 Nil) 78 Nil) 80 (TreeNode (TreeNode Nil 82 (TreeNode Nil 84 (TreeNode Nil 86 (TreeNode Nil 88 Nil)))) 89 Nil)) 90 (TreeNode (TreeNode (TreeNode Nil 91 Nil) 93 Nil) 95 Nil))) :: Tree Int)
test6  =  TestCase (assertEqual "for tree1 ," 67 (kthSmallestElement tree1 44))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6] 
    return ()
