import Code
import Test.HUnit

testSymmetricTree1 = TestCase (assertEqual "for symmetricTree (Nil :: Tree Int), " True (symmetricTree (Nil :: Tree Int)))

testSymmetricTree2 = TestCase (assertEqual "for symmetricTree (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 4 Nil)), " False (symmetricTree (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 4 Nil))))

testSymmetricTree3 = TestCase (assertEqual "for symmetricTree (TreeNode (TreeNode (TreeNode Nil 7 Nil) 5 Nil) 4 (TreeNode (TreeNode Nil 7 Nil) 5 Nil)), " False (symmetricTree (TreeNode (TreeNode (TreeNode Nil 7 Nil) 5 Nil) 4 (TreeNode (TreeNode Nil 7 Nil) 5 Nil))))

testSymmetricTree4 = TestCase (assertEqual "for symmetricTree (TreeNode (TreeNode (TreeNode Nil 7 (TreeNode Nil 8 Nil)) 5 Nil) 1 (TreeNode Nil 5 (TreeNode (TreeNode Nil 8 Nil) 7 Nil))), " True (symmetricTree (TreeNode (TreeNode (TreeNode Nil 7 (TreeNode Nil 8 Nil)) 5 Nil) 1 (TreeNode Nil 5 (TreeNode (TreeNode Nil 8 Nil) 7 Nil)))))

testSymmetricTree5 = TestCase (assertEqual "for symmetricTree (TreeNode (TreeNode (TreeNode (TreeNode Nil 8 Nil) 7 (TreeNode Nil 8 Nil)) 5 (TreeNode Nil 6 Nil)) 1 (TreeNode (TreeNode Nil 6 Nil) 5 (TreeNode (TreeNode Nil 8 Nil) 7 (TreeNode Nil 8 Nil)))), " True (symmetricTree (TreeNode (TreeNode (TreeNode (TreeNode Nil 8 Nil) 7 (TreeNode Nil 8 Nil)) 5 (TreeNode Nil 6 Nil)) 1 (TreeNode (TreeNode Nil 6 Nil) 5 (TreeNode (TreeNode Nil 8 Nil) 7 (TreeNode Nil 8 Nil))))))

testsSymmetricTree = TestList [TestLabel "test1" testSymmetricTree1, TestLabel "test2" testSymmetricTree2, TestLabel "test3" testSymmetricTree3, TestLabel "test4" testSymmetricTree4, TestLabel "test5" testSymmetricTree5]

main :: IO()
main = do
  runTestTT testsSymmetricTree >> return ()