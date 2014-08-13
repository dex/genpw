import GenPw
import Test.QuickCheck
import Text.Printf
import System.Random

main = mapM_ (\(s, a) -> printf "%-25s" s >> a) tests

prop_lenth :: RandomGen g => IO g -> Int -> Bool
prop_lenth (IO g) = \n -> ((length $ genPw n g) == n)

tests = [("test length", quickCheck $ prop_lenth getStdGen)]
