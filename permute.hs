rot :: [a] -> Int -> Int -> [[a]]
rot _ _ 0 = []
rot y 1 _ = [y]
rot (y:ys) l rot_count = map add (rot ys (l - 1) (l - 1)) ++ rot (ys ++ [y]) l (rot_count - 1)
    where add x = y : x

allPerms :: [a] -> [[a]]
allPerms str = rot str (length str) (length str)

myNub :: (Eq a) => [[a]] -> [[a]]                   
myNub [] = []                                  
myNub (y:xs) | y `elem` xs = myNub xs             
             | otherwise = y : myNub xs

sort :: (Ord a) => [[a]] -> [[a]]
sort [] = []
sort (a:as) = sort (filter (<a) as) ++ [a] ++ sort (filter (>a) as)

permute :: (Ord a) => [a] -> [[a]]
permute [] = [[]]
permute x  = sort (myNub (allPerms x))


