-- ZAD 1 (20) =============================================================

{-
  fromIntegral :: (Num b, Integral a) => a -> b

  fromInteger :: Num a => Integer -> a
  toInteger:: Integral a => a -> Integer

  realToFrac:: (Real a, Fractional b) => a -> b
  fromRational :: Fractional a => Rational -> a
  toRational :: Real a => a -> Rational

  ceiling  :: (RealFrac a, Integral b) => a -> b
  floor    :: (RealFrac a, Integral b) => a -> b
  truncate :: (RealFrac a, Integral b) => a -> b
  round    :: (RealFrac a, Integral b) => a -> b

  float2Double :: Float -> Double
  double2Float :: Double -> Float
-}

-- ZAD 2 (21) O(n) ========================================================

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++[x]

-- ZAD3 (22) =============================================================

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- nieskonczona lista
fib2 = [0]++[1]++zipWith(+)fib2 (tail fib2)

-- ZAD4 (23) =============================================================

middle a b c = minimum [max a b, max a c, max b c]

-- ZAD5 (24) =============================================================

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort (filter (<= x) xs) ++ [x] ++ qsort (filter (> x) xs)

-- ZAD6 (25) =============================================================

inits xs = [take n xs| n<-[1..length xs]]

-- ZAD7 (26) =============================================================

part xs = [splitAt n xs | n<-[1..length xs]]

-- ZAD8 (27) =============================================================

nub :: (Eq a)=>[a]->[a]

nub [] = []
nub [x] = [x]
nub (x:xs) = x:nub[ a| a<-xs, a/=x]

-- ZAD9 (28) =============================================================

perm :: (Eq a) => [a] -> [[a]]

remove x xs = [ a| a<-xs, a/=x]

perm [] = [[]]
perm xs = [x:ys | x <-xs, ys<-perm (remove x xs)]

-- ZAD10 (29) =============================================================

getZeroes 0 = 0
getZeroes n = n `div` 5 + getZeroes (n `div` 5)
