import Code
import Test.HUnit

testMinPathMaze1 = TestCase (assertEqual "for minPathMaze [[1,3,10],[1,5,1],[4,2,1]], " 9 (minPathMaze [[1, 3, 10], [1, 5, 1], [4, 2, 1]]))

testMinPathMaze2 = TestCase (assertEqual "for minPathMaze [[1,2,3],[4,5,6],[4,5,6]], " 18 (minPathMaze [[1, 2, 3], [4, 5, 6], [4, 5, 6]]))

testMinPathMaze3 = TestCase (assertEqual "for minPathMaze [[1,2,3,4],[5,2,6,7],[6,3,2,1],[7,4,5,2]], " 13 (minPathMaze [[1, 2, 3, 4], [5, 2, 6, 7], [6, 3, 2, 1], [7, 4, 5, 2]]))

testMinPathMaze4 = TestCase (assertEqual "for minPathMaze [[1,2,3,4,5],[4,5,6,7,8],[7,8,9,9,10],[10,11,1,13,14],[15,16,17,18,19]], " 66 (minPathMaze [[1, 2, 3, 4, 5], [4, 5, 6, 7, 8], [7, 8, 9, 9, 10], [10, 11, 1, 13, 14], [15, 16, 17, 18, 19]]))

testMinPathMaze5 = TestCase (assertEqual "for minPathMaze [[1,20,3,4,5,6],[5,1,2,7,8,9],[7,8,1,2,10,11],[10,11,1,2,22,15],[15,16,17,1,2,20],[21,22,23,24,2,26]], " 44 (minPathMaze [[1, 20, 3, 4, 5, 6], [5, 1, 2, 7, 8, 9], [7, 8, 1, 2, 10, 11], [10, 11, 1, 2, 22, 15], [15, 16, 17, 1, 2, 20], [21, 22, 23, 24, 2, 26]]))

testMinPathMaze6 = TestCase (assertEqual "for minPathMaze [9], " 9 (minPathMaze [[9]]))

testsMinPathMaze = TestList [TestLabel "test1" testMinPathMaze1, TestLabel "test2" testMinPathMaze2, TestLabel "test3" testMinPathMaze3, TestLabel "test4" testMinPathMaze4, TestLabel "test5" testMinPathMaze5, TestLabel "test6" testMinPathMaze6]

main :: IO ()
main = do
  runTestTT testsMinPathMaze >> return ()