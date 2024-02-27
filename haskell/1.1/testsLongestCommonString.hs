import Code
import Test.HUnit

testLongestCommonString1 = TestCase (assertEqual "for longestCommonString Null Null, " Null (longestCommonString Null Null))

testLongestCommonString2 = TestCase (assertEqual "for longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'a' Null)))) (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'a' Null)))))), " (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'a' Null))))) (longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'a' Null))))) (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'a' Null)))))))

testLongestCommonString3 = TestCase (assertEqual "for longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'g' Null))))) (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'h' Null)))))), " (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' Null)))) (longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'g' Null))))) (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'h' Null)))))))

testLongestCommonString4 = TestCase (assertEqual "for longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'e' Null))))) (ListNode 'g' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'f' Null)))))), " (ListNode 'b' (ListNode 'c' (ListNode 'd' Null))) (longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'g' Null))))) (ListNode 'g' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'f' Null)))))))

testLongestCommonString5 = TestCase (assertEqual "for longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'e' Null))))) (ListNode 'g' (ListNode 'b' (ListNode 'c' (ListNode 'f' (ListNode 'g' Null)))))), " (ListNode 'b' (ListNode 'c' Null)) (longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'e' Null))))) (ListNode 'g' (ListNode 'b' (ListNode 'c' (ListNode 'f' (ListNode 'g' Null)))))))

testLongestCommonString6 = TestCase (assertEqual "for longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'e' Null))))) (ListNode 'g' (ListNode 'h' (ListNode 'i' (ListNode 'j' (ListNode 'e' Null)))))), " (ListNode 'e' Null) (longestCommonString (ListNode 'a' (ListNode 'b' (ListNode 'c' (ListNode 'd' (ListNode 'e' Null))))) (ListNode 'g' (ListNode 'h' (ListNode 'i' (ListNode 'j' (ListNode 'e' Null)))))))

testsLongestCommonString = TestList [TestLabel "test1" testLongestCommonString1, TestLabel "test2" testLongestCommonString2, TestLabel "test3" testLongestCommonString3, TestLabel "test4" testLongestCommonString4, TestLabel "test5" testLongestCommonString5, TestLabel "test6" testLongestCommonString6]

main :: IO ()
main = do
  runTestTT testsLongestCommonString >> return ()