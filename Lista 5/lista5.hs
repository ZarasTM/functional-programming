-- Zad 52

getEven xs = foldr (\x y -> ((x+1) `mod` 2) + y) 0 xs

-- Zad 53
{-
sum :: Num a => [a] -> a (computes a sum of all elements in the list)
product :: Num a => [a] -> a (computes a product of all elements in the list)
all :: (a -> Bool) -> [a] -> Bool (returns True if all items in the list fulfill the condition)
any :: (a -> Bool) -> [a] -> Bool (returns True if at least one item in the list fulfills the condition)
-}
-- Zad 54
{-
foldl - is left recursive
foldr - is right recursive
foldl' - same as foldl but goes from the end
foldr' - same as foldr but goes from the end
-}
-- Zad 55

approx n = foldl (+) 0 (map (\x -> 1/(foldr (*) 1 [1..x])) [1..n])

-- Zad 56

alterSeries xs = foldl (+) 0 (zipWith (*) (cycle [1,-1]) xs)

-- Zad 57

fracAvg :: (Fractional a) => [a] -> a
fracAvg xs = (foldl (+) 0 xs)/(fromIntegral (length xs))

fracVar :: (Fractional a) => [a] -> a
fracVar xs = (foldr (\x y -> (x - avg)^2 + y) 0 xs) / (fromIntegral (length xs))
    where avg = fracAvg xs