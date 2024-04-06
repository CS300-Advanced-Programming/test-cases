import Code
import Test.HUnit

testCase1 = TestCase (assertEqual " " ["pw", "px", "py", "pz", "qw", "qx", "qy", "qz", "rw", 
                    "rx", "ry", "rz", "sw", "sx", "sy", "sz"] (letterCombinations "79"))

testCase2 = TestCase (assertEqual " "  ["ppp", "ppq", "ppr", "pps", "pqp", "pqq", "pqr", "pqs", 
                    "prp", "prq", "prr", "prs", "psp", "psq", "psr", "pss", "qpp", "qpq", "qpr", "qps", "qqp", "qqq", 
                    "qqr", "qqs", "qrp", "qrq", "qrr", "qrs", "qsp", "qsq", "qsr", "qss", "rpp", "rpq", "rpr", "rps", 
                    "rqp", "rqq", "rqr", "rqs", "rrp", "rrq", "rrr", "rrs", "rsp", "rsq", "rsr", "rss", "spp", "spq", "spr", 
                    "sps", "sqp", "sqq", "sqr", "sqs", "srp", "srq", "srr", "srs", "ssp", "ssq", "ssr", "sss"] (letterCombinations "777"))

testCase3 = TestCase (assertEqual " "  ["add", "ade", "adf", "aed", "aee", "aef", "afd", "afe", 
                    "aff", "bdd", "bde", "bdf", "bed", "bee", "bef", "bfd", "bfe", "bff", "cdd", "cde", "cdf", "ced", 
                    "cee", "cef", "cfd", "cfe", "cff"] (letterCombinations "233"))

testCase4 = TestCase (assertEqual " "  ["adgp", "adgq", "adgr", "adgs", "adhp", "adhq", "adhr", 
                    "adhs", "adip", "adiq", "adir", "adis", "aegp", "aegq", "aegr", "aegs", "aehp", "aehq", "aehr", "aehs", "aeip", 
                    "aeiq", "aeir", "aeis", "afgp", "afgq", "afgr", "afgs", "afhp", "afhq", "afhr", "afhs", "afip", "afiq", "afir",
                     "afis","bdgp", "bdgq", "bdgr", "bdgs", "bdhp", "bdhq", "bdhr", "bdhs", "bdip", "bdiq", "bdir", "bdis", "begp", 
                    "begq", "begr", "begs", "behp", "behq", "behr", "behs", "beip", "beiq", "beir", "beis", "bfgp", "bfgq", "bfgr",         
                    "bfgs", "bfhp", "bfhq", "bfhr", "bfhs", "bfip", "bfiq", "bfir", "bfis", "cdgp", "cdgq", "cdgr", "cdgs", "cdhp", 
                    "cdhq", "cdhr", "cdhs", "cdip", "cdiq", "cdir", "cdis", "cegp", "cegq", "cegr", "cegs", "cehp", "cehq", "cehr", 
                    "cehs", "ceip", "ceiq", "ceir", "ceis", "cfgp", "cfgq", "cfgr", "cfgs", "cfhp", "cfhq", "cfhr", "cfhs", "cfip",     
                    "cfiq", "cfir", "cfis"] (letterCombinations "2347"))

testCase5 = TestCase (assertEqual " " ["tmjgd", "tmjge", "tmjgf", "tmjhd", "tmjhe", "tmjhf", 
                    "tmjid", "tmjie", "tmjif", "tmkgd", "tmkge", "tmkgf", "tmkhd", "tmkhe", "tmkhf", "tmkid", "tmkie", 
                    "tmkif", "tmlgd", "tmlge", "tmlgf", "tmlhd", "tmlhe", "tmlhf", "tmlid", "tmlie", "tmlif", "tnjgd", "tnjge", 
                    "tnjgf", "tnjhd", "tnjhe", "tnjhf", "tnjid", "tnjie", "tnjif", "tnkgd", "tnkge", "tnkgf", "tnkhd", "tnkhe", "tnkhf", 
                    "tnkid", "tnkie", "tnkif", "tnlgd", "tnlge", "tnlgf", "tnlhd", "tnlhe", "tnlhf", "tnlid", "tnlie", "tnlif", "tojgd", 
                    "tojge", "tojgf", "tojhd", "tojhe", "tojhf", "tojid", "tojie", "tojif", "tokgd", "tokge", "tokgf", "tokhd", "tokhe", 
                    "tokhf", "tokid", "tokie", "tokif", "tolgd", "tolge", "tolgf", "tolhd", "tolhe", "tolhf", "tolid", "tolie", "tolif", 
                    "umjgd", "umjge", "umjgf", "umjhd", "umjhe", "umjhf", "umjid", "umjie", "umjif", "umkgd", "umkge", 
                    "umkgf", "umkhd", "umkhe", "umkhf", "umkid", "umkie", "umkif", "umlgd", "umlge", "umlgf", "umlhd", 
                    "umlhe", "umlhf", "umlid", "umlie", "umlif", "unjgd", "unjge", "unjgf", "unjhd", "unjhe", "unjhf", "unjid", 
                    "unjie", "unjif", "unkgd", "unkge", "unkgf", "unkhd", "unkhe", "unkhf", "unkid", "unkie", "unkif", "unlgd", 
                    "unlge", "unlgf", "unlhd", "unlhe", "unlhf", "unlid", "unlie", "unlif", "uojgd", "uojge", "uojgf", "uojhd", 
                    "uojhe", "uojhf", "uojid", "uojie", "uojif", "uokgd", "uokge", "uokgf", "uokhd", "uokhe", "uokhf", "uokid", 
                    "uokie", "uokif", "uolgd", "uolge", "uolgf", "uolhd", "uolhe", "uolhf", "uolid", "uolie", "uolif", "vmjgd", 
                    "vmjge", "vmjgf", "vmjhd", "vmjhe", "vmjhf", "vmjid", "vmjie", "vmjif", "vmkgd", "vmkge", "vmkgf", 
                    "vmkhd", "vmkhe", "vmkhf", "vmkid", "vmkie", "vmkif", "vmlgd", "vmlge", "vmlgf", "vmlhd", "vmlhe", 
                    "vmlhf", "vmlid", "vmlie", "vmlif", "vnjgd", "vnjge", "vnjgf", "vnjhd", "vnjhe", "vnjhf", "vnjid", "vnjie", 
                    "vnjif", "vnkgd", "vnkge", "vnkgf", "vnkhd", "vnkhe", "vnkhf", "vnkid", "vnkie", "vnkif", "vnlgd", 
                    "vnlge", "vnlgf", "vnlhd", "vnlhe", "vnlhf", "vnlid", "vnlie", "vnlif", "vojgd", "vojge", "vojgf", "vojhd", 
                    "vojhe", "vojhf", "vojid", "vojie", "vojif", "vokgd", "vokge", "vokgf", "vokhd", "vokhe", "vokhf", "vokid", 
                    "vokie", "vokif", "volgd", "volge", "volgf", "volhd", "volhe", "volhf", "volid", "volie", "volif"] 
                    (letterCombinations "86543"))


main::IO()
main = do
    runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, testCase5]
    return ()