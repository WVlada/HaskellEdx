--prvi - nije dobar
-- nije tacan jer treba da vrati item a ne listu itema sa tim itemom
x1 = [1,2,3]
x11 = [1]
x21 = last x1
x31 = drop (length x1-1) x1

--drugi - dobar
x2 = head (drop (length x1 - 1) x1)

--treci - nije tacan
x3 = tail (reverse x1)

--cetvrti - nije tacan
-- jer head vraca ITEM, pa se ne moze reversovati
x4 = head x1

--peti - dobar
-- !! uzime listu i index, i vraca item u tom indexu
x5 = x1 !! (length x1 -1)

--sesti - nije dobar, dobijam empty list
x6 = head (drop (length x1)	x1)

-- sedmi - dobar
x7 = head (reverse x1)

-- osam 
x8 = reverse x1 !! (length x1-1)

