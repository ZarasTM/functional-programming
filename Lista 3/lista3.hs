-- Zad 40

plus = (\x y -> x + y)
mult = (\x y -> x * y)

-- Zad 41

ff = (2 ^)
gg = (^ 2)

{-
	Dla działania: 2 + f(6) + 1
		ff - 67, ponieważ 2 + 2^6 + 1 = 67 
		gg - 39, ponieważ 2 + 6^2 +1 = 39 
-}

-- Zad 42

mapFF = map (2 ^) [1..5]
mapGG = map (^ 2) [1..5]

-- Zad 43

-- zad43 x y = (\x -> (\y -> x + 2*y)) (x * y)
-- zad43 a b = (\x -> (\y -> x + 2*y)) (a * b)
zad43 a b = (\y -> a*b + 2*y)

-- Zad 44

zad44 = \x -> x^16

-- x^2
fF = \x -> x*x  

-- (x^2)^2 = x^4
gF = \y -> fF (fF y) 

-- (x^4)^4 = x^16
hF = gF . gF 

{- Zad 46 
	(head $ map (\x y -> (x*x) + (y*y) ) [2 ,3 ,4]) 5
	29
	
	- bierzemy tylko heada z listy
	- dla podanego x i y wylicz (x*x)+(y*y)
	- czyli mamy (2*2)+(5*5) = 29
-}