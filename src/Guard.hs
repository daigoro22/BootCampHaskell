module Guard
    ( guard,
    guardAndPatternMatch
    ) where

import Data.Char

guard :: IO ()

-- ガード条件を使った関数：which
-- 不正な引数（0以外）から関数をガードしてくれる

which n
    | n == 0 = "Zero!"

guard = do 
    putStrLn $ which 0 -- Zero!
    putStrLn $ which 1 -- Non-exhaustive patterns in function which

-- ガード条件とパターンマッチを使った関数：guardAndPatternMatch
-- ガード条件に加えてパターンマッチの引数を宣言できる

guardAndPatternMatch::IO()

what [] = "empty string!" -- whatの引数が空のリストの時、"empty string!"の関数がwhatに代入される
what (c:_) -- _ はワイルドカードで、どんな値にもマッチする
    | isUpper c = "upper case!"
    | isLower c = "lower case"
    | otherwise = "not a letter!"

guardAndPatternMatch = do
    putStrLn $ what "AAAA" -- upper case!
    putStrLn $ what "aaaa" -- lower case
    putStrLn $ what "[][]" -- not a letter!
    putStrLn $ what "" -- empty string!