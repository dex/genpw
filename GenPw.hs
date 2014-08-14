module GenPw (genPw) where

import System.Random
import Data.Char

validChars ::  Int -> Bool
validChars x = chr x `elem` ['a'..'z'] ++ ['A'..'Z'] ++ ['0'..'9']

genPw ::  RandomGen g => Int -> g -> String
genPw n gen = take num . map chr . filter validChars $ randomRs (33, 126) gen
              where num = abs n
