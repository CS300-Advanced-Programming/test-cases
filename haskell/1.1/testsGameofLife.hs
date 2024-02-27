import Code
import Test.HUnit

testGameofLife1 = TestCase (assertEqual "for gameofLife [[0,1,0],[1,0,1],[1,1,1],[0,0,1]], " [[0, 1, 0], [1, 0, 1], [1, 0, 1], [0, 0, 1]] (gameofLife [[0, 1, 0], [1, 0, 1], [1, 1, 1], [0, 0, 1]]))

testGameofLife2 = TestCase (assertEqual "for gameofLife [[1,0],[1,0]], " [[0, 0], [0, 0]] (gameofLife [[1, 0], [1, 0]]))

testGameofLife3 = TestCase (assertEqual "for gameofLife [[1],[1], [1]], " [[0], [1], [0]] (gameofLife [[1], [1], [1]]))

testGameofLife4 = TestCase (assertEqual "for gameofLife [[0,1,0,1],[0,1,1,1],[1,0,1,0]], " [[0, 1, 0, 1], [1, 0, 0, 1], [0, 0, 1, 1]] (gameofLife [[0, 1, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]))

testGameofLife5 = TestCase (assertEqual "for gameofLife [[0,1,0,1,1,0],[0,1,1,1,0,1],[1,0,1,0,0,0], [1,1,1,0,0,0], [0,0,0,1,0,1]], " [[0, 1, 0, 1, 1, 0], [1, 0, 0, 0, 0, 0], [1, 0, 0, 0, 0, 0], [1, 0, 1, 1, 0, 0], [0, 1, 1, 0, 0, 0]] (gameofLife [[0, 1, 0, 1, 1, 0], [0, 1, 1, 1, 0, 1], [1, 0, 1, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 0, 1, 0, 1]]))

testsGameofLife = TestList [TestLabel "test1" testGameofLife1, TestLabel "test2" testGameofLife2, TestLabel "test3" testGameofLife3, TestLabel "test4" testGameofLife4, TestLabel "test5" testGameofLife5]

main :: IO ()
main = do
  runTestTT testsGameofLife >> return ()