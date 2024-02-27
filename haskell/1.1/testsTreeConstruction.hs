import Code
import Test.HUnit

testTreeConstruction1 = TestCase (assertEqual "for treeConstruction \"abcde\", " (TreeNode (TreeNode (TreeNode (TreeNode (TreeNode Nil 'e' Nil) 'd' Nil) 'c' Nil) 'b' Nil) 'a' Nil) (treeConstruction "abcde")) -- Fixed typo here. Inner most element should be 'e' but was labelled 'd'

testTreeConstruction2 = TestCase (assertEqual "for treeConstruction \"^\", " Nil (treeConstruction "^"))

testTreeConstruction3 = TestCase (assertEqual "for treeConstruction \"abcd^c\", " (TreeNode (TreeNode (TreeNode (TreeNode Nil 'd' Nil) 'c' (TreeNode Nil 'c' Nil)) 'b' Nil) 'a' Nil) (treeConstruction "abcd^c"))

testTreeConstruction4 = TestCase (assertEqual "for treeConstruction \"abc^def\", " (TreeNode (TreeNode (TreeNode Nil 'c' Nil) 'b' (TreeNode (TreeNode (TreeNode Nil 'f' Nil) 'e' Nil) 'd' Nil)) 'a' Nil) (treeConstruction "abc^def"))

testTreeConstruction5 = TestCase (assertEqual "for treeConstruction \"abc^def^gh\", " (TreeNode (TreeNode (TreeNode Nil 'c' Nil) 'b' (TreeNode (TreeNode (TreeNode Nil 'f' Nil) 'e' (TreeNode (TreeNode Nil 'h' Nil) 'g' Nil)) 'd' Nil)) 'a' Nil) (treeConstruction "abc^def^gh"))

testTreeConstruction6 = TestCase (assertEqual "for treeConstruction \"abc^def^gh^i\", " (TreeNode (TreeNode (TreeNode Nil 'c' Nil) 'b' (TreeNode (TreeNode (TreeNode Nil 'f' Nil) 'e' (TreeNode (TreeNode Nil 'h' Nil) 'g' (TreeNode Nil 'i' Nil))) 'd' Nil)) 'a' Nil) (treeConstruction "abc^def^gh^i"))

testsTreeConstruction = TestList [TestLabel "test1" testTreeConstruction1, TestLabel "test2" testTreeConstruction2, TestLabel "test3" testTreeConstruction3, TestLabel "test4" testTreeConstruction4, TestLabel "test5" testTreeConstruction5, TestLabel "test6" testTreeConstruction6]

main :: IO ()
main = do
  runTestTT testsTreeConstruction >> return ()