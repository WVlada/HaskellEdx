import Data.Char
-- sum100 = sum [x^2 | x <- [1..100]]


-- replica n a = [a | _ <- [1..n]]

--pyth n 
--	= [(x,y,z) | x <- [1..n], y <- [1..n],
--    z <- [1..n], x^2 + y^2 == z^2]

factors n = [x | x <- [1..n], y <- [1..n], x*y == n ] 

--perf n = [x | x <- [1..n], isPerfect x]
--		where isPerfect num = sum (factors num) == num

--ok
perf n = [x | x <- [1..n], isPerfect x]
		where isPerfect num = sum (init (factors num)) == num

some x = [(x,y) | x <- [1,2,3], y <- [4,5,6]]

-- some1 x = [z | z <- [ [(x,y) | y <- [4,5,6] | x <- [1,2,3]] ]

-- some1 x = concat [[ [(x,y) | x <- [1,2,3]] | y <- [4,5,6]]

some1 x = concat [  [(x,y) | y <- [4,5,6]] | x <- [1,2,3]  ]

find k t = [v | (k',v) <- t,k==k']

positions x xs = find x (zip xs[0..n])
				where n = length xs-1

scalarproduct xs ys = sum [x*y | (x,y) <- xs `zip` ys]


proba = [(x,y) | x <- [1,2], y <- [1,2]]

proba2 = [x | x <- [1,2,3], y <- [1..x]]

proba3 = sum [x | x <- [1..10], even x]

xs = 1: [x+1 | x <- xs ]

riffle xs ys = concat [[x,y] | (x,y) <- xs `zip` ys]

divides x y = if x `mod` y == 0 then True else False

divisors x = [d | d <- [1..x], x `divides` d ]




let2int c = ord c - ord 'a'
let2int2 c = ord c - ord 'A'


int2let n = chr (ord 'a' + n)
int2let2 n = chr (ord 'A' + n)

shiwft n c
		|isLower c = int2let ((let2int c + n) `mod` 26)
		|isUpper c = int2let2 ((let2int2 c + n) `mod` 26)
		|otherwise = c

encode n xs = [shiwft n x | x <- xs]

z = "Think like a Fundamentalist Code like a Hacker"