--import Prelude hiding ((||))
--import Prelude hiding ((&&))
-- ok
--False || False = False
--_ || _ = True

--ok
--False || b = b
--True || _ = True

-- nije
--b || c
--	| b == c = True
--	| otherwise = False

-- ok
--b || c
--	| b == c = b
--	| otherwise = True

-- ok
--b || False = b
--_ || True = True

-- ok
--b || c 
--	| b == c = c
--	| otherwise = True

-- nije
--b || True = b
--_ || True = True

-- ok 
--False || False = False
--False || True = True
--True || False = True
--True || True = True

--ok
--True && True = True
--_ && _ = False 

--ok
--a && b = if a then if b then True else False else False

-- nije
--a && b = if not (a) then not (b) else True

--nije - nema 
--a && b = if a then b 

--nije
--a && b = if a then if b then False else True else False

--ok
--a && b = if a then b else False

--ok
--a && b = if b then a else False


--mult x x z = \ x -> (\ y -> (\ z -> x * y * z))
--mult = \ x -> (\y -> (\z -> x*y*z))

--f x g y
--((fx)g)y

-- takes a function as its argument

--remove n xs = take n xs ++ drop (n+1) xs

-- [1,2,3,4,4,5,6,7]

