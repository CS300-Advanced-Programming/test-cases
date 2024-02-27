import Code
import Test.HUnit



test1 = TestCase (assertEqual "for ," (ListNode 1 (ListNode 8 (ListNode 27 Null))) ((^3) <$> ListNode 1 (ListNode 2 (ListNode 3 Null))))
test2 = TestCase (assertEqual "for ," (ListNode 1 (ListNode 2 (ListNode 3 (ListNode 2 (ListNode 3 (ListNode 4 (ListNode 1 (ListNode 4 (ListNode 9 Null))))))))) (ListNode (^1) (ListNode (+1) (ListNode (^2) Null)) <*> ListNode 1 (ListNode 2 (ListNode 3 Null))))
test3 = TestCase (assertEqual "for ," (ListNode 2 (ListNode 3 (ListNode 4 Null))) ((ListNode 4 (ListNode 5 (ListNode 6 Null)) >>= (\x -> ListNode (x-2) Null))))
test4 = TestCase (assertEqual "for ," (ListNode 1 (ListNode 6 (ListNode 4 Null))) (pure 3 >>= (\x -> ListNode (x-2) (ListNode (x+3) (ListNode (x + 1 ) Null)))))
test5 = TestCase (assertEqual "for ," (ListNode 49 (ListNode 64 (ListNode 25 (ListNode 36 Null)))) ((+) <$> ListNode 4 (ListNode 2 Null) <*> ListNode 3 (ListNode 4 Null) >>= (\x -> ListNode (x^2) Null)))
test6 = TestCase (assertEqual "for ," (ListNode 66 (ListNode 62 (ListNode 83 (ListNode 79 (ListNode 27 (ListNode 23 (ListNode 38 (ListNode 34 Null)))))))) ((+) <$> ListNode 5 (ListNode 2 Null) <*> ListNode 3 (ListNode 4 Null) >>= (\x -> ListNode (x^2) Null) >>= (\x -> ListNode (x+2) (ListNode (x-2) Null))))


main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5, test6] 
    return ()