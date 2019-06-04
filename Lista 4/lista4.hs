-- Zad 48
mySpan p [] = ([],[])
mySpan p xs@(x:xs')
    | p x = (x:ys,zs)
    | otherwise = ([],xs)
        where (ys,zs) = mySpan p xs'

-- Zad 49
ecd xs = [ y | (z,y)<- zip [0..] xs, notElem y $ take z xs ]

-- Zad 50
pack [] = []
pack (x:xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)

-- Zad 51
rleEnc [] = []
rleEnc (x:xs) = (length (x : takeWhile (== x) xs), x) : rleEnc (dropWhile (== x) xs)

rleDec [] = []
rleDec (x:xs) = replicate (fst x) (snd x) ++ rleDec xs
