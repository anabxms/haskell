-- Find the biggest element of the list
biggest :: [Int] -> Int
biggest [] = 0
biggest [x] = x 
biggest (x:xs) | (x > biggest xs) = x 
               | otherwise = biggest xs

-- Remove the biggest
remove_biggest :: [Int] -> [Int]
remove_biggest [] = []
remove_biggest (x:xs) | (x == (biggest (x:xs))) = xs 
                      | otherwise = x : remove_biggest xs

-- Remove biggers elements then the n-ary biggest
remove_biggers :: Int -> [Int] -> [Int]
remove_biggers 1 x = x
remove_biggers n x = remove_biggers (n - 1) (remove_biggest x)

-- Get the biggers from the previous list, remove them from the original 
-- list and get the biggest from the new one
n_ary_biggest :: Int -> [Int] -> Int
n_ary_biggest y xs = biggest (remove_biggers y xs)

-- Remove a given element
remove :: Int -> [Int] -> [Int]
remove _ [] = []
remove a (x:xs) | a /= x = x : remove a xs
                | otherwise = xs

-- Remove the n-ary biggest
removeLargeN :: Int -> [Int] -> [Int]
removeLargeN _ [] = []
removeLargeN 0 xs = xs
removeLargeN y (x:xs) = remove (n_ary_biggest y (x:xs)) (x:xs)

