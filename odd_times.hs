-- Count the amount of repetitions of each number
count :: (Eq a) => a -> [a] -> Int
count _ [] = 0
count y (x:xs) | y == x = 1 + (count y xs)
               | otherwise = count y xs

-- Check if the amount of repetitions is odd
remainder :: (Integral a) => a -> a -> a
remainder x y = x - ((x `div` y) * y)

isodd :: (Integral a) => a -> Bool
isodd x | x `remainder` 2 /= 0 = True
        | otherwise = False

-- Concatenate only those who have odd amount of repetitions
getodds :: (Eq a) => [a] -> [a] -> [a]
getodds [] _ = []
getodds (x:xs) list | isodd (count x list) = x : getodds xs list
                    | otherwise = getodds xs list

-- Remove repetitions
my_elem :: (Eq a) => a -> [a] -> Bool
my_elem _ []                   = False
my_elem n (x : xs) | n == x    = True
                   | otherwise = my_elem n (xs)

my_nub :: (Eq a) => [a] -> [a] 
my_nub []                      = []
my_nub (x : xs) | my_elem x xs = my_nub xs
                | otherwise    = x : my_nub xs

-- Sort the array
insertion :: (Ord a) => [a] -> [a]
insertion [] = []
insertion (x:xs) = sort x (insertion xs)

sort :: (Ord a) => a -> [a] -> [a]
sort r [] = [r]
sort r (x:xs) | r <= x = r:x:xs
              | otherwise = x : sort r xs

-- Flip the ordered list
inverse :: [a] -> [a]
inverse [] = []
inverse (x:xs) = inverse xs ++ [x]

-- Apply the functions
oddTimes :: (Eq a) => (Ord a) => [a] -> [a]
oddTimes [] = []
oddTimes xs = inverse (insertion (my_nub (getodds xs xs)))

