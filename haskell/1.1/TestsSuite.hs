import Code
import Test.HUnit
import System.Environment (getArgs)

testCommonAncestor1 = TestCase (assertEqual "for commonAncestor Nil 1 2, " Nothing (commonAncestor (Nil :: Tree Int) 1 2))

testCommonAncestor2 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 1 7, " Nothing (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 1 7))

testCommonAncestor3 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 0 7, " (Just 6) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 0 7))

testCommonAncestor4 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 8 7, " (Just 8) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 8 7))

testCommonAncestor5 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 5 2, " (Just 2) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 5 2))

testCommonAncestor6 = TestCase (assertEqual "for commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 6 5, " (Just 6) (commonAncestor (TreeNode (TreeNode (TreeNode Nil 0 Nil) 2 (TreeNode (TreeNode Nil 3 Nil) 4 (TreeNode Nil 5 Nil))) 6 (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))) 6 5))

testsCommonAncestor = TestList [TestLabel "test1" testCommonAncestor1, TestLabel "test2" testCommonAncestor2, TestLabel "test3" testCommonAncestor3, TestLabel "test4" testCommonAncestor4, TestLabel "test5" testCommonAncestor5, TestLabel "test6" testCommonAncestor6]

testGameofLife1 = TestCase (assertEqual "for gameofLife [[0,1,0],[1,0,1],[1,1,1],[0,0,1]], " [[0, 1, 0], [1, 0, 1], [1, 0, 1], [0, 0, 1]] (gameofLife [[0, 1, 0], [1, 0, 1], [1, 1, 1], [0, 0, 1]]))

testGameofLife2 = TestCase (assertEqual "for gameofLife [[1,0],[1,0]], " [[0, 0], [0, 0]] (gameofLife [[1, 0], [1, 0]]))

testGameofLife3 = TestCase (assertEqual "for gameofLife [[1],[1], [1]], " [[0], [1], [0]] (gameofLife [[1], [1], [1]]))

testGameofLife4 = TestCase (assertEqual "for gameofLife [[0,1,0,1],[0,1,1,1],[1,0,1,0]], " [[0, 1, 0, 1], [1, 0, 0, 1], [0, 0, 1, 1]] (gameofLife [[0, 1, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]))

testGameofLife5 = TestCase (assertEqual "for gameofLife [[0,1,0,1,1,0],[0,1,1,1,0,1],[1,0,1,0,0,0], [1,1,1,0,0,0], [0,0,0,1,0,1]], " [[0, 1, 0, 1, 1, 0], [1, 0, 0, 0, 0, 0], [1, 0, 0, 0, 0, 0], [1, 0, 1, 1, 0, 0], [0, 1, 1, 0, 0, 0]] (gameofLife [[0, 1, 0, 1, 1, 0], [0, 1, 1, 1, 0, 1], [1, 0, 1, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 0, 1, 0, 1]]))

testsGameofLife = TestList [TestLabel "test1" testGameofLife1, TestLabel "test2" testGameofLife2, TestLabel "test3" testGameofLife3, TestLabel "test4" testGameofLife4, TestLabel "test5" testGameofLife5]

testTrapRainWater1 = TestCase (assertEqual "for trapRainWater [0,1,0,2,1,0,1,3,2,1,1], " 10 (waterCollection [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 1]))

testTrapRainWater2 = TestCase (assertEqual "for trapRainWater [10,9,0,9,12,15], " 24 (waterCollection [10, 9, 0, 9, 12, 15]))

testTrapRainWater3 = TestCase (assertEqual "for trapRainWater [2,3,4,4], " 0 (waterCollection [2, 3, 4, 4]))

testTrapRainWater4 = TestCase (assertEqual "for trapRainWater [15,2,1], " 0 (waterCollection [15, 2, 1]))

testTrapRainWater5 = TestCase (assertEqual "for trapRainWater [5,4,3,2,1,2,3,4], " 18 (waterCollection [5, 4, 3, 2, 1, 2, 3, 4]))

testTrapRainWater6 = TestCase (assertEqual "for trapRainWater [9,8,9,8,6,7,4,2,3,0], " 6 (waterCollection [9, 8, 9, 8, 6, 7, 4, 2, 3, 0]))

testTrapRainWater7 = TestCase (assertEqual "for trapRainWater [12, 10, 11, 10, 8, 9, 6, 5, 4, 3, 2, 3, 4, 5, 6, 2, 3, 4, 5, 6], " 56 (waterCollection [12, 10, 11, 10, 8, 9, 6, 5, 4, 3, 2, 3, 4, 5, 6, 2, 3, 4, 5, 6]))

testsTrapRainWater = TestList [TestLabel "test1" testTrapRainWater1, TestLabel "test2" testTrapRainWater2, TestLabel "test3" testTrapRainWater3, TestLabel "test4" testTrapRainWater4, TestLabel "test5" testTrapRainWater5, TestLabel "test6" testTrapRainWater6, TestLabel "test7" testTrapRainWater7]

testMinPathMaze1 = TestCase (assertEqual "for minPathMaze [[1,3,10],[1,5,1],[4,2,1]], " 9 (minPathMaze [[1, 3, 10], [1, 5, 1], [4, 2, 1]]))

testMinPathMaze2 = TestCase (assertEqual "for minPathMaze [[1,2,3],[4,5,6],[4,5,6]], " 18 (minPathMaze [[1, 2, 3], [4, 5, 6], [4, 5, 6]]))

testMinPathMaze3 = TestCase (assertEqual "for minPathMaze [[1,2,3,4],[5,2,6,7],[6,3,2,1],[7,4,5,2]], " 13 (minPathMaze [[1, 2, 3, 4], [5, 2, 6, 7], [6, 3, 2, 1], [7, 4, 5, 2]]))

testMinPathMaze4 = TestCase (assertEqual "for minPathMaze [[1,2,3,4,5],[4,5,6,7,8],[7,8,9,9,10],[10,11,1,13,14],[15,16,17,18,19]], " 66 (minPathMaze [[1, 2, 3, 4, 5], [4, 5, 6, 7, 8], [7, 8, 9, 9, 10], [10, 11, 1, 13, 14], [15, 16, 17, 18, 19]]))

testMinPathMaze5 = TestCase (assertEqual "for minPathMaze [[1,20,3,4,5,6],[5,1,2,7,8,9],[7,8,1,2,10,11],[10,11,1,2,22,15],[15,16,17,1,2,20],[21,22,23,24,2,26]], " 44 (minPathMaze [[1, 20, 3, 4, 5, 6], [5, 1, 2, 7, 8, 9], [7, 8, 1, 2, 10, 11], [10, 11, 1, 2, 22, 15], [15, 16, 17, 1, 2, 20], [21, 22, 23, 24, 2, 26]]))

testMinPathMaze6 = TestCase (assertEqual "for minPathMaze [9], " 9 (minPathMaze [[9]]))

testsMinPathMaze = TestList [TestLabel "test1" testMinPathMaze1, TestLabel "test2" testMinPathMaze2, TestLabel "test3" testMinPathMaze3, TestLabel "test4" testMinPathMaze4, TestLabel "test5" testMinPathMaze5, TestLabel "test6" testMinPathMaze6]

main :: IO ()
main = do
  runTestTT testsGameofLife >> return ()
  runTestTT testsTrapRainWater >> return ()
  runTestTT testsMinPathMaze >> return ()