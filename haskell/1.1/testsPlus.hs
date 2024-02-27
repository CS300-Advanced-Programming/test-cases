import Code
import Test.HUnit

result1 = TreeNode Nil 2 (TreeNode Nil 3 Nil) + TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 3 Nil)

testPlus1 = TestCase (assertEqual "for result1, " (TreeNode (TreeNode Nil 1 Nil) 5 (TreeNode Nil 6 Nil) :: Tree Int) result1)

testPlus2 = TestCase (assertEqual "for TreeNode Nil + TreeNode Nil, " (Nil :: Tree Int) ((Nil :: Tree Int) + (Nil :: Tree Int)))

testPlus3 = TestCase (assertEqual "for TreeNode Nil + TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 3 Nil), " (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 3 Nil) :: Tree Int) (Nil + TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode Nil 3 Nil)))

testPlus4 = TestCase (assertEqual "for TreeNode (TreeNode (TreeNode Nil 1 (TreeNode (TreeNode Nil 2 Nil) (-2) (TreeNode Nil 3 Nil))) 3 (TreeNode Nil 5 Nil)) 4 (TreeNode Nil 2 (TreeNode (TreeNode Nil 5 Nil) 7 (TreeNode Nil (-7) Nil))) + TreeNode (TreeNode (TreeNode (TreeNode Nil 0 Nil) 1 Nil) 3 (TreeNode (TreeNode Nil 1 Nil) 6 (TreeNode Nil (-2) Nil))) 4 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 5 (TreeNode Nil 4 Nil)) 2 (TreeNode (TreeNode Nil (-5) Nil) 7 Nil)), " (TreeNode (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 2 Nil) (-2) (TreeNode Nil 3 Nil))) 6 (TreeNode (TreeNode Nil 1 Nil) 11 (TreeNode Nil (-2) Nil))) 8 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 5 (TreeNode Nil 4 Nil)) 4 (TreeNode (TreeNode Nil 0 Nil) 14 (TreeNode Nil (-7) Nil))) :: Tree Int) (TreeNode (TreeNode (TreeNode Nil 1 (TreeNode (TreeNode Nil 2 Nil) (-2) (TreeNode Nil 3 Nil))) 3 (TreeNode Nil 5 Nil)) 4 (TreeNode Nil 2 (TreeNode (TreeNode Nil 5 Nil) 7 (TreeNode Nil (-7) Nil))) + TreeNode (TreeNode (TreeNode (TreeNode Nil 0 Nil) 1 Nil) 3 (TreeNode (TreeNode Nil 1 Nil) 6 (TreeNode Nil (-2) Nil))) 4 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 5 (TreeNode Nil 4 Nil)) 2 (TreeNode (TreeNode Nil (-5) Nil) 7 Nil)))) 

testPlus5 = TestCase (assertEqual "for TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode (TreeNode Nil 1 Nil) 6 Nil)) 4 (TreeNode (TreeNode Nil 5 Nil) 2 (TreeNode Nil 7 Nil)) + TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode (TreeNode Nil (-1) Nil) 6 Nil)) 4 (TreeNode (TreeNode (TreeNode Nil 1 Nil) 5 Nil) 2 (TreeNode Nil 7 Nil)), " (TreeNode (TreeNode (TreeNode Nil 2 Nil) 6 (TreeNode (TreeNode Nil 0 Nil) 12 Nil)) 8 (TreeNode (TreeNode (TreeNode Nil 1 Nil) 10 Nil) 4 (TreeNode Nil 14 Nil)) :: Tree Int) (TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode (TreeNode Nil 1 Nil) 6 Nil)) 4 (TreeNode (TreeNode Nil 5 Nil) 2 (TreeNode Nil 7 Nil)) + TreeNode (TreeNode (TreeNode Nil 1 Nil) 3 (TreeNode (TreeNode Nil (-1) Nil) 6 Nil)) 4 (TreeNode (TreeNode (TreeNode Nil 1 Nil) 5 Nil) 2 (TreeNode Nil 7 Nil))))

testsPlus = TestList [TestLabel "test1" testPlus1, TestLabel "test2" testPlus2, TestLabel "test3" testPlus3, TestLabel "test4" testPlus4, TestLabel "test5" testPlus5]

main :: IO ()
main = do
  runTestTT testsPlus >> return ()