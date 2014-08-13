import GenPw
import System.Random
import Control.Monad

main ::  IO ()
main = liftM (genPw 8) getStdGen >>= putStrLn
