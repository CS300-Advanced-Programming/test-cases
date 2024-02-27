import Code
import Test.HUnit

testSnakeTraversal1 = TestCase (assertEqual "for snakeTraversal Nil, " ([] :: [Int]) (snakeTraversal Nil))

testSnakeTraversal2 = TestCase (assertEqual "for snakeTraversal (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 4 Nil)), " [2, 4, 1] (snakeTraversal (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 4 Nil))))

testSnakeTraversal3 = TestCase (assertEqual "for snakeTraversal (TreeNode (TreeNode (TreeNode Nil 7 Nil) 5 Nil) 4 (TreeNode (TreeNode Nil 8 Nil) 3 Nil)), " [4, 3, 5, 7, 8] (snakeTraversal (TreeNode (TreeNode (TreeNode Nil 7 Nil) 5 Nil) 4 (TreeNode (TreeNode Nil 8 Nil) 3 Nil))))

testSnakeTraversal4 = TestCase (assertEqual "for snakeTraversal (TreeNode (TreeNode (TreeNode Nil 7 (TreeNode Nil 8 Nil)) 5 Nil) 1 (TreeNode Nil 6 (TreeNode (TreeNode Nil 9 Nil) 4 Nil))), " [1, 6, 5, 7, 4, 9, 8] (snakeTraversal (TreeNode (TreeNode (TreeNode Nil 7 (TreeNode Nil 8 Nil)) 5 Nil) 1 (TreeNode Nil 6 (TreeNode (TreeNode Nil 9 Nil) 4 Nil)))))

testSnakeTraversal5 = TestCase (assertEqual "for snakeTraversal (TreeNode (TreeNode (TreeNode (TreeNode Nil 9 Nil) 7 (TreeNode (TreeNode Nil 10 Nil) 8 (TreeNode Nil 11 Nil))) 5 (TreeNode Nil 6 Nil)) 1 (TreeNode (TreeNode Nil 7 Nil) 4 (TreeNode (TreeNode Nil 2 Nil) 3 (TreeNode Nil 0 Nil)))), " [1, 4, 5, 7, 6, 7, 3, 0, 2, 8, 9, 10, 11] (snakeTraversal (TreeNode (TreeNode (TreeNode (TreeNode Nil 9 Nil) 7 (TreeNode (TreeNode Nil 10 Nil) 8 (TreeNode Nil 11 Nil))) 5 (TreeNode Nil 6 Nil)) 1 (TreeNode (TreeNode Nil 7 Nil) 4 (TreeNode (TreeNode Nil 2 Nil) 3 (TreeNode Nil 0 Nil))))))

testSnakeTraversal6 = TestCase (assertEqual "for snakeTraversal (TreeNode (TreeNode Nil 5 (TreeNode (TreeNode Nil 8 (TreeNode (TreeNode Nil 4 (TreeNode Nil 0 Nil)) 2 Nil)) 6 Nil)) 1 (TreeNode (TreeNode Nil 7 (TreeNode (TreeNode Nil 3 (TreeNode (TreeNode Nil 16 Nil) 11 Nil)) 9 Nil)) 4 Nil)), " [1, 4, 5, 6, 7, 9, 8, 2, 3, 11, 4, 0, 16] (snakeTraversal (TreeNode (TreeNode Nil 5 (TreeNode (TreeNode Nil 8 (TreeNode (TreeNode Nil 4 (TreeNode Nil 0 Nil)) 2 Nil)) 6 Nil)) 1 (TreeNode (TreeNode Nil 7 (TreeNode (TreeNode Nil 3 (TreeNode (TreeNode Nil 16 Nil) 11 Nil)) 9 Nil)) 4 Nil))))

testsSnakeTraversal = TestList [TestLabel "test1" testSnakeTraversal1, TestLabel "test2" testSnakeTraversal2, TestLabel "test3" testSnakeTraversal3, TestLabel "test4" testSnakeTraversal4, TestLabel "test5" testSnakeTraversal5, TestLabel "test6" testSnakeTraversal6]

main :: IO ()
main = do
  runTestTT testsSnakeTraversal >> return ()