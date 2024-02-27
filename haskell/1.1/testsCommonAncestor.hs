import Code
import Test.HUnit

testCommonAncestor1 = TestCase (assertEqual "for commonAncestor Nil 1 2, " Nothing (commonAncestor (Nil :: Tree Int) 1 2))

testCommonAncestor2 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 1 7, " Nothing (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 1 7))

testCommonAncestor3 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 0 7, " (Just 6) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 0 7))

testCommonAncestor4 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 8 7, " (Just 8) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 8 7))

testCommonAncestor5 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 5 2, " (Just 2) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 5 2))

testCommonAncestor6 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 6 5, " (Just 6) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 6 5))

testsCommonAncestor = TestList [TestLabel "test1" testCommonAncestor1, TestLabel "test2" testCommonAncestor2, TestLabel "test3" testCommonAncestor3, TestLabel "test4" testCommonAncestor4, TestLabel "test5" testCommonAncestor5, TestLabel "test6" testCommonAncestor6]

main :: IO ()
main = do
  runTestTT testsCommonAncestor >> return ()