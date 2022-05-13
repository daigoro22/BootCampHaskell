module LfAfterAlphanumerics
    ( showLf
    ) where

import Data.Char

addLfAfterAlphanumerics::String->String
addLfAfterAlphanumerics [] = ""
addLfAfterAlphanumerics str = left++[sym] ++("\n") ++ addLfAfterAlphanumerics(right)
    where
        sp = span (\c -> or [isLetter c,c==' ']) str
        left = fst sp
        right = tail(tail(snd sp))
        sym = head (snd sp)

showLf::IO ()
showLf = putStrLn $ addLfAfterAlphanumerics ("To Be, Or Not To Be: That Is The Question.")