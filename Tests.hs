import GenPw
import Test.QuickCheck
import Test.QuickCheck.Random
import Text.Printf

main = mapM_ (\(s, a) -> printf "%-25s: " s >> a) tests

prop_lenth (n, g) = ((length . genPw num . mkTheGen $ g) == num)
                    where num = abs n

tests = [("test length", verboseCheck $ (prop_lenth :: (Int, Int) -> Bool))]
