import Code
import Test.HUnit

testPalindromList1 = TestCase (assertEqual "for palindromList (Null :: LinkedList Int), " True (palindromList (Null :: LinkedList Int)))

testPalindromList2 = TestCase (assertEqual "for palindromList (ListNode 1 (ListNode 1 Null)), " True (palindromList (ListNode 1 (ListNode 1 Null))))

testPalindromList3 = TestCase (assertEqual "for palindromList (ListNode 1 (ListNode 2 (ListNode 3 (ListNode 4 (ListNode 5 Null))))), " False (palindromList (ListNode 1 (ListNode 2 (ListNode 3 (ListNode 4 (ListNode 5 Null)))))))

testPalindromList4 = TestCase (assertEqual "for palindromList (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'd' (ListNode 'c' (ListNode 'b' (ListNode 'a' Null))))))), " True (palindromList (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'd' (ListNode 'c' (ListNode 'b' (ListNode 'a' Null))))))))))

testPalindromList5 = TestCase (assertEqual "for palindromList (ListNode 'a' (ListNode 'b' (ListNode 'a' Null))), " True (palindromList (ListNode 'a' (ListNode 'b' (ListNode 'a' Null)))))

testsPalindromList = TestList [TestLabel "test1" testPalindromList1, TestLabel "test2" testPalindromList2, TestLabel "test3" testPalindromList3, TestLabel "test4" testPalindromList4, TestLabel "test5" testPalindromList5]

main :: IO ()
main = do
  runTestTT testsPalindromList >> return ()