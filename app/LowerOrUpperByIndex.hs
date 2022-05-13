module LowerOrUpperByIndex
    ( showLOU
    ) where

import Data.Char

toLowerOrUpperByIndex::[String] -> Bool -> String
toLowerOrUpperByIndex [] _ = ""
toLowerOrUpperByIndex (s:ss) f= converted++" "++toLowerOrUpperByIndex ss (not f)
    where
        lower s = map toLower s
        upper s = map toUpper s
        converted = if f then lower(s) else upper(s)

showLOU::IO ()
showLOU = putStrLn (toLowerOrUpperByIndex (words "To be, or not to be: that is the question.") True)