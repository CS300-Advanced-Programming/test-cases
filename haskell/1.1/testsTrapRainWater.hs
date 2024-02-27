import Code
import Test.HUnit

testTrapRainWater1 = TestCase (assertEqual "for trapRainWater [0,1,0,2,1,0,1,3,2,1,1], " 10 (waterCollection [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 1]))

testTrapRainWater2 = TestCase (assertEqual "for trapRainWater [10,9,0,9,12,15], " 24 (waterCollection [10, 9, 0, 9, 12, 15]))

testTrapRainWater3 = TestCase (assertEqual "for trapRainWater [2,3,4,4], " 0 (waterCollection [2, 3, 4, 4]))

testTrapRainWater4 = TestCase (assertEqual "for trapRainWater [15,2,1], " 0 (waterCollection [15, 2, 1]))

testTrapRainWater5 = TestCase (assertEqual "for trapRainWater [5,4,3,2,1,2,3,4], " 18 (waterCollection [5, 4, 3, 2, 1, 2, 3, 4]))

testTrapRainWater6 = TestCase (assertEqual "for trapRainWater [9,8,9,8,6,7,4,2,3,0], " 6 (waterCollection [9, 8, 9, 8, 6, 7, 4, 2, 3, 0]))

testTrapRainWater7 = TestCase (assertEqual "for trapRainWater [12, 10, 11, 10, 8, 9, 6, 5, 4, 3, 2, 3, 4, 5, 6, 2, 3, 4, 5, 6], " 56 (waterCollection [12, 10, 11, 10, 8, 9, 6, 5, 4, 3, 2, 3, 4, 5, 6, 2, 3, 4, 5, 6]))

testsTrapRainWater = TestList [TestLabel "test1" testTrapRainWater1, TestLabel "test2" testTrapRainWater2, TestLabel "test3" testTrapRainWater3, TestLabel "test4" testTrapRainWater4, TestLabel "test5" testTrapRainWater5, TestLabel "test6" testTrapRainWater6, TestLabel "test7" testTrapRainWater7]

main :: IO ()
main = do
  runTestTT testsTrapRainWater >> return ()