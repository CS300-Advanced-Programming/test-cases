import Code
import Test.HUnit


test1 = TestCase (assertEqual "for ," [] (palindromePairs ["detroit", ""]))
test2 = TestCase (assertEqual "for ," ["areera", "aviddiva", "divaavid", "eraare"] (palindromePairs ["era", "are", "avid", "diva"]))
test3 = TestCase (assertEqual "for ," [ "marttram", "strawwarts", "trammart", "wartsstraw"] (palindromePairs ["tram", "mart", "warts", "straw"]))
test4 = TestCase (assertEqual "for ," [ "leperrepel", "repelleper"] (palindromePairs ["leper", "repel"]))
test5 = TestCase (assertEqual "for ," ["denned", "nedden"] (palindromePairs ["den", "ned"]))

main :: IO ()
main = do
    runTestTT $ TestList [test1, test2, test3, test4, test5] 
    return ()