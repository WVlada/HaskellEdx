--[[Integer]]
--[[Int]]
--Num t => [[t]]
-- [[a]] - NIJE

--[[[Integer]]]
--[[[Int]]
--Num t => [[[t]]
-- Eq => [[[t]]] - NIJE

--e3 x = x*2
--Num a => a -> a

--e4 (x,y) = x
--(a,b) -> a

--e5 (x, y, z) = z
--(x, y, z) -> z

--e6 x y = x * y
--Num a => a-> a->a

--e7 (x, y) = (y, x)
--(a,b) -> (b,a)

--e8 x y = (y, x)
--a -> b -> (b,a)

--e9 [x, y] = (x, True)
--[t] -> (t, Bool)

--e10 (x, y) = [x, y]
--(t,t) -> [t] - jer da bi vratio [] - moraju vec biti istog tipa

--e11 :: (Char, Bool)
--e11 = ("t",False) - nije
--e11 = ('\a',False) - ok

--e12 :: [(Char, Int)]
--e12 = [('a',1)]

--e13 :: Int -> Int -> Int
--e13 x y = x+y*y

--e14 :: ([Char], [Float])
--e14 = ("Haskell", [3.1,3.121])

--e15 :: [a] -> [b] -> (a, b)
--e15 xs ys = (head xs, head ys)





