import System.Random
import Data.Char

main ::  IO ()
main = getStdGen >>= genPw 8 >>= putStrLn

validChars ::  Int -> Bool
validChars x = chr x `elem` ['a'..'z'] ++ ['A'..'Z'] ++ ['0'..'9']

genPw ::  RandomGen g => Int -> g -> IO String
genPw n gen = return . take n . map chr . filter validChars $ randomRs (33, 126) gen
