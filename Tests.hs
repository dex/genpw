import Test.QuickCheck
import Text.Printf

main = mapM_ (\s, a -> printf "%-25s" s >> a) tests

prop_lenth n = \g -> length . Main.genPw n g == n

tests = [("test length", getStdGen >>= quickCheck prop_lenth)]
