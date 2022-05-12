module Guard
    ( guard
    ) where

guard :: IO ()

-- ガード条件を使った関数：which
-- 不正な引数（0以外）から関数をガードしてくれる

which n
    | n == 0 = "Zero!"

guard = do 
    putStrLn $ which 0 -- Zero!
    putStrLn $ which 1 -- Non-exhaustive patterns in function which