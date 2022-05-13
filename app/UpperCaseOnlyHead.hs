module UpperCaseOnlyHead
    ( showUpper
    ) where

import Data.Char

toUpperCaseOnlyHead::String->String
toUpperCaseOnlyHead s = concatMap(\x -> toUpper (head x) :tail x ++ " ")(words s)

showUpper::IO ()
showUpper = putStrLn $ toUpperCaseOnlyHead ("To Be, Or Not To Be: That Is The Question.")