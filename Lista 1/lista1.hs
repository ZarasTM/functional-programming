-- Zad 3

eps n iter count = 
    if iter <= n
        then if gcd n iter == 1
            then eps n (iter+1) (count+1)
            else eps n (iter+1) count
        else count

sumEps n iter sum =
    if iter <= n
        then if n `mod` iter == 0
            then sumEps n (iter+1) (sum + eps iter 1 0)
            else sumEps n (iter+1) sum
        else sum


-- Zad 4

pTriad n =
  [(a,b,c)| a <- [1..n], b <- [1..a], c <- [1..b], a^2 == b^2 + c^2, gcd b c == 1]

-- Zad 5

fibRec n count prev curr =
    if n > count
        then fibRec n (count+1) curr (prev+curr)
        else curr

fibPatt 0 = 0
fibPatt 1 = 1
fibPatt n = fibPatt (n-1) + fibPatt (n-2)


-- Zad 6

symNew n k =
    if n == k || k == 0
        then 1
        else symNew (n-1) (k-1) + symNew (n-1) k


-- Zad 7

-- result [6,28,496,8128]
perfectNum n = [x| x <- [1..n], x == sum [b| b <- [1..(x-1)], x `mod` b == 0]]
