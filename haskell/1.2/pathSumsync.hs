import Code
import Test.HUnit
import Code (Tree(Nil))

inputTree1 :: Tree Int
inputTree1 = TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 Nil)
targetTree1 :: Tree Int
targetTree1 = Nil
outputTree1 :: Tree Int
outputTree1 = Nil
testCase1 = TestCase (assertEqual " " outputTree1 (pathSumSync inputTree1 targetTree1))

inputTree2 :: Tree Int
inputTree2 = TreeNode (TreeNode Nil 1 (TreeNode Nil 1 Nil)) 2 (TreeNode Nil 3 Nil)
targetTree2 :: Tree Int
targetTree2 = TreeNode (TreeNode Nil 1 (TreeNode Nil 1 Nil)) 1 (TreeNode Nil 1 Nil)
outputTree2 :: Tree Int
outputTree2 = TreeNode (TreeNode Nil 1 Nil) 2 Nil
testCase2 = TestCase (assertEqual " " outputTree2 (pathSumSync inputTree2 targetTree2))

inputTree3 :: Tree Int
inputTree3 = TreeNode 
            (TreeNode 
                (TreeNode Nil 2 Nil) 
                1 
                (TreeNode Nil 3 (TreeNode Nil 4 Nil))
            ) 
            0 
            (TreeNode 
                (TreeNode Nil 5 Nil) 
                6 
                (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))
            )
targetTree3 :: Tree Int
targetTree3 = TreeNode 
            (TreeNode Nil 2 Nil) 
            2
            (TreeNode 
                (TreeNode Nil 5 Nil) 
                3
                (TreeNode (TreeNode Nil 2 Nil) 4 (TreeNode Nil 4 Nil))
            )
outputTree3 :: Tree Int
outputTree3 = TreeNode 
            (TreeNode Nil 1 (TreeNode Nil 3 Nil)) 
            0 
            (TreeNode (TreeNode Nil 5 Nil) 6 Nil)
testCase3 = TestCase (assertEqual " " outputTree3 (pathSumSync inputTree3 targetTree3))

inputTree4 :: Tree Int
inputTree4 = TreeNode 
            (TreeNode 
                (TreeNode Nil 2 Nil) 
                1 
                (TreeNode Nil 3 (TreeNode Nil 4 Nil))
            ) 
            0 
            (TreeNode 
                (TreeNode Nil 5 Nil) 
                6 
                (TreeNode (TreeNode Nil 7 Nil) 8 (TreeNode Nil 9 Nil))
            )
targetTree4 :: Tree Int
targetTree4 = TreeNode 
            (TreeNode Nil 2 Nil) 
            2
            (TreeNode 
                (TreeNode Nil 5 Nil) 
                3
                (TreeNode 
                    (TreeNode Nil 2 Nil) 
                    4 
                    (TreeNode Nil 4 (TreeNode Nil 1 Nil))
                )
            )
outputTree4 :: Tree Int
outputTree4 = TreeNode 
            (TreeNode Nil 1 (TreeNode Nil 3 Nil)) 
            0 
            (TreeNode (TreeNode Nil 5 Nil) 6 (TreeNode Nil 8 Nil))
testCase4 = TestCase (assertEqual " " outputTree4 (pathSumSync inputTree4 targetTree4))

inputTree5 :: Tree Int
inputTree5 = TreeNode 
            (TreeNode 
                (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 Nil)) 
                9 
                (TreeNode (TreeNode Nil 5 Nil) 6 Nil)
            ) 
            7 
            (TreeNode 
                (TreeNode Nil 8 (TreeNode Nil 9 Nil)) 
                10 
                (TreeNode (TreeNode Nil 11 Nil) 12 (TreeNode (TreeNode Nil 13 Nil) 14 Nil))
            )
targetTree5 :: Tree Int
targetTree5 = TreeNode 
            (TreeNode Nil 5 Nil) 
            5
            (TreeNode 
                (TreeNode Nil 4 (TreeNode Nil 2 Nil)) 
                6 
                Nil
            )
outputTree5 :: Tree Int
outputTree5 = TreeNode Nil 7 (TreeNode Nil 10 Nil)
testCase5 = TestCase (assertEqual " " outputTree5 (pathSumSync inputTree5 targetTree5))

inputTree6 :: Tree Int
inputTree6 = TreeNode 
            (TreeNode 
                (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 Nil)) 
                4 
                (TreeNode (TreeNode Nil 5 Nil) 6 Nil)
            ) 
            7 
            (TreeNode 
                (TreeNode Nil 8 (TreeNode Nil 9 Nil)) 
                10 
                (TreeNode (TreeNode Nil 11 Nil) 12 (TreeNode (TreeNode Nil 13 Nil) 14 Nil))
            )
targetTree6 :: Tree Int
targetTree6 = TreeNode 
            (TreeNode 
                (TreeNode Nil 4 Nil) 
                5 
                (TreeNode Nil 6 Nil) 
            ) 
            5
            (TreeNode 
                (TreeNode 
                    (TreeNode (TreeNode Nil 9 Nil) 1 Nil) 
                    4 
                    (TreeNode Nil 2 Nil)
                ) 
                6 
                (TreeNode Nil 11 Nil) 
            )
outputTree6 :: Tree Int
outputTree6 = TreeNode 
            (TreeNode 
                (TreeNode (TreeNode Nil 1 Nil) 2 (TreeNode Nil 3 Nil)) 
                4 
                (TreeNode (TreeNode Nil 5 Nil) 6 Nil)
            ) 
            7 
            (TreeNode (TreeNode Nil 8 Nil) 10 Nil)
testCase6 = TestCase (assertEqual " " outputTree6 (pathSumSync inputTree6 targetTree6))

inputTree7 :: Tree Int
inputTree7 = TreeNode
            (TreeNode
                (TreeNode Nil 1 (TreeNode (TreeNode Nil 2 Nil) 3 Nil))
                4
                (TreeNode (TreeNode (TreeNode Nil 5 Nil) 6 Nil) 7 Nil)
            )
            8
            (TreeNode
                (TreeNode Nil 9 (TreeNode Nil 10 Nil))
                11
                (TreeNode 
                    (TreeNode Nil 12 Nil) 
                    13 
                    (TreeNode (TreeNode Nil 14 (TreeNode Nil 15 Nil)) 16 (TreeNode (TreeNode Nil 17 Nil) 18 (TreeNode Nil 19 Nil)))
                )
            )
targetTree7 :: Tree Int
targetTree7 = TreeNode 
            (TreeNode Nil 25 Nil) 
            60
            (TreeNode (TreeNode Nil 18 Nil) (-1) (TreeNode Nil 24 Nil))
outputTree7 :: Tree Int
outputTree7 = TreeNode
            Nil
            8
            (TreeNode
                Nil
                11
                (TreeNode 
                    Nil
                    13 
                    (TreeNode (TreeNode Nil 14 (TreeNode Nil 15 Nil)) 16 (TreeNode (TreeNode Nil 17 Nil) 18 (TreeNode Nil 19 Nil)))
                )
            )
testCase7 = TestCase (assertEqual " " outputTree7 (pathSumSync inputTree7 targetTree7))

inputTree8 :: Tree Int
inputTree8 = TreeNode 
        (TreeNode 
            (TreeNode 
                (TreeNode Nil 3 Nil) 
                2 
                (TreeNode Nil 3 Nil)
            ) 
            1 
            (TreeNode 
                (TreeNode (TreeNode Nil 1 Nil) 2 Nil) 
                2 
                (TreeNode Nil 3 Nil)
            )
        ) 
        0 
        (TreeNode 
            (TreeNode 
                (TreeNode Nil 3 (TreeNode Nil 0 Nil)) 
                2 
                (TreeNode Nil 3 (TreeNode Nil (-1) Nil))
            ) 
            1 
            (TreeNode 
                (TreeNode Nil 3 Nil) 
                2 
                (TreeNode   
                        (TreeNode (TreeNode Nil (-3) Nil) 3 Nil) 
                        3 
                        (TreeNode Nil 3 (TreeNode Nil (-3) Nil))
                )
            )
        )
targetTree8 :: Tree Int
targetTree8 = TreeNode Nil 6 Nil
outputTree8 :: Tree Int
outputTree8 = TreeNode 
        (TreeNode 
            (TreeNode 
                (TreeNode Nil 3 Nil) 
                2 
                (TreeNode Nil 3 Nil)
            ) 
            1 
            (TreeNode 
                (TreeNode (TreeNode Nil 1 Nil) 2 Nil) 
                2 
                (TreeNode Nil 3 Nil)
            )
        ) 
        0 
        (TreeNode 
            (TreeNode 
                (TreeNode Nil 3 (TreeNode Nil 0 Nil)) 
                2 
                (TreeNode Nil 3 Nil)
            ) 
            1 
            (TreeNode 
                (TreeNode Nil 3 Nil) 
                2 
                (TreeNode   
                        (TreeNode (TreeNode Nil (-3) Nil) 3 Nil) 
                        3 
                        (TreeNode Nil 3 (TreeNode Nil (-3) Nil))
                )
            )
        )

testCase8 = TestCase (assertEqual " " outputTree8 (pathSumSync inputTree8 targetTree8))


main :: IO ()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, testCase5, testCase6, testCase7, testCase8] 
    return ()