import Code
import Test.HUnit


t1 :: Tree Int
t1 = TreeNode (TreeNode Nil 8 Nil) 11 (TreeNode (TreeNode (TreeNode Nil 4 Nil) 9 Nil) 16 Nil)
t2 :: Tree Int
t2 = TreeNode (TreeNode (TreeNode (TreeNode Nil 11 Nil) 7 Nil) 9 Nil) 6 (TreeNode (TreeNode Nil 13 Nil) 4 Nil)
t3 :: Tree Int
t3 = TreeNode (TreeNode Nil 5 Nil) 2 (TreeNode (TreeNode Nil 12 Nil) 11 Nil)
t4 :: Tree Int
t4 = TreeNode (TreeNode (TreeNode Nil 11 Nil) 9 Nil) 8 (TreeNode (TreeNode Nil 12 (TreeNode Nil 13 (TreeNode Nil 16 Nil))) 10 Nil)
t5 :: Tree Int
t5 = TreeNode (TreeNode (TreeNode Nil 6 Nil) 8 Nil) 10 (TreeNode (TreeNode Nil 9 Nil) 4 Nil)
t6:: Tree Int
t6 = TreeNode (TreeNode Nil 12 Nil) 5 (TreeNode (TreeNode (TreeNode Nil 9 Nil) 13 Nil) 15 Nil)
t7 :: Tree Int
t7 = TreeNode Nil 2 Nil
t8 :: Tree Int
t8 = TreeNode Nil 1 Nil

tree8 = (TreeNode (TreeNode (TreeNode (TreeNode Nil 44 Nil) 22 Nil) 17 Nil) 4 (TreeNode (TreeNode Nil 34 Nil) 19 (TreeNode Nil 11 Nil)) :: Tree Int)
tree9 = (TreeNode (TreeNode (TreeNode Nil 15 Nil) 13 Nil) 32 (TreeNode Nil 11 Nil) :: Tree Int)
tree10 = (TreeNode (TreeNode (TreeNode Nil 2 Nil) 3 Nil) 8 (TreeNode Nil 22 Nil) :: Tree Int)
tree11 = (TreeNode (TreeNode (TreeNode (TreeNode Nil 32 Nil) 22 Nil) 15 Nil) 17 (TreeNode Nil 13 (TreeNode Nil 11 Nil)) :: Tree Int)
tree12 = (TreeNode (TreeNode Nil 11 Nil) 3 (TreeNode Nil 4 (TreeNode Nil 5 (TreeNode Nil 6 Nil))):: Tree Int)

test1 = TestCase (assertEqual "for ," 12 (blastsAndFire (ListNode (TreeNode (TreeNode Nil 13 Nil) 8 (TreeNode (TreeNode Nil 6 Nil) 9 Nil)) (ListNode (TreeNode (TreeNode (TreeNode Nil 13 (TreeNode Nil 5 Nil)) 11 Nil) 6 (TreeNode Nil 8 (TreeNode Nil 10 Nil))) (ListNode (TreeNode (TreeNode Nil 9 (TreeNode Nil 13 Nil)) 15 (TreeNode Nil 7 (TreeNode (TreeNode Nil 14 (TreeNode Nil 6 Nil)) 8 Nil))) Null))) 1))
test2 = TestCase (assertEqual "for ," 11 (blastsAndFire (ListNode (TreeNode (TreeNode Nil 11 Nil) 7 (TreeNode (TreeNode Nil 9 Nil) 13 Nil)) (ListNode (TreeNode (TreeNode (TreeNode Nil 10 Nil) 6 Nil) 5 (TreeNode Nil 8 (TreeNode (TreeNode Nil 14 Nil) 11 Nil))) (ListNode (TreeNode (TreeNode Nil 7 Nil) 10 (TreeNode (TreeNode Nil 15 (TreeNode Nil 9 Nil)) 12 Nil)) (ListNode (TreeNode (TreeNode (TreeNode Nil 6 Nil) 10 Nil) 8 (TreeNode Nil 15 Nil)) Null)))) 2))
test3 = TestCase (assertEqual "for ," 15 (blastsAndFire (ListNode t1 (ListNode t2 (ListNode t3 (ListNode t4 (ListNode t4 (ListNode t5 (ListNode t6 Null))))))) 3))
test4 = TestCase (assertEqual "for ," 28 (blastsAndFire (ListNode t1 (ListNode t2 (ListNode t3 (ListNode t4 (ListNode t4 (ListNode t5 (ListNode t6 Null))))))) 0))
test5 = TestCase (assertEqual "for ," 23 (blastsAndFire (ListNode t1 (ListNode t2 (ListNode t3 (ListNode t4 (ListNode t4 (ListNode t5 (ListNode t6 Null))))))) 1))
test6 = TestCase (assertEqual "for ," 2 (blastsAndFire (ListNode t7 (ListNode t7 (ListNode t8 Null))) 1))
test7 = TestCase (assertEqual "for ," 15 (blastsAndFire (ListNode tree8 (ListNode tree9 (ListNode tree10 (ListNode tree11 (ListNode tree12 Null))))) 1))
test8 = TestCase (assertEqual "for ," 23 (blastsAndFire (ListNode tree8 (ListNode tree9 (ListNode tree10 (ListNode tree11 (ListNode tree12 Null))))) 4))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6, test7, test8] 
    return ()