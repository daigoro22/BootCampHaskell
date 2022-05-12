module TypeSignatures
    ( typeSignature
    ) where

-- 型シグネチャ
-- pos で使う < 関数は以下のように型シグネチャが決まっている
-- (<) :: Ord a => a -> a -> Bool
-- Ord は関数の代入の際の順序が決まっている型
-- Ord を導入した理由は、小なり（<）は項が入れ替わると意味が変わるため

pos :: (Ord a, Num a) => a -> a
neg :: Int -> Int

-- pos：負の数を正の数に変換する関数
pos x
    | x < 0 = negate x
    | otherwise = x

-- neg：正の数を負の数に変換する関数
neg y
    | y > 0 = negate y
    | otherwise = y

typeSignature :: IO ()

typeSignature = do
    -- ()で囲わないとハイフンが関数として pos に代入される
    print $ pos (-1) -- 1
    print $ pos (-1.0)-- 1.0
--  print $ neg (1.0) -- 型シグネチャに合わないのでコンパイルエラー