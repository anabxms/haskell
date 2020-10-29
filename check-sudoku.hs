-- | 1) Separar colunas, linhas e grids em blocos pra poder comparar depois
--   9 colunas | 9 linhas | 9 grids 3x3 

--   Linhas 
rows :: [[a]] -> [[a]]
rows = id 

--   Colunas 
my_map :: (a -> b) -> [a] -> [b]
my_map _ []        = []
my_map func (x:xs) = func x : my_map func xs

columns :: [[a]] -> [[a]]
columns []         = []
columns ([] : xss) = columns xss
columns r          = (my_map my_head r) : columns (my_map my_tail r)
    where 
        my_head (x:_)  = x
        my_tail (_:xs) = xs

--   Grids 
--    Pegar os 3 primeiros elementos a cada 3 linhas e 3 colunas e colocar numa lista
my_concat :: [[a]] -> [a]
my_concat []       = []
my_concat (x : xs) = x ++ my_concat xs

split3 :: [a] -> [[a]]
split3 []               = []
split3 (a : b : c : xs) = [a, b, c] : split3 xs

grids :: [[a]] -> [[a]]
grids = my_map my_concat . split3 . my_concat . columns . my_map split3

-- | 2) Juntando todos em uma lista 

getBlocks :: [[a]] -> [[a]]
getBlocks x = rows x ++ columns x ++ grids x

-- | 3) Checar se os números não se repetem

my_elem :: (Eq a) => a -> [a] -> Bool
my_elem n []                   = False          -- Se tem a variavel e a lista está vazia, então não é igual
my_elem n (x : xs) | n == x    = True           -- Se a variável é igual ao elemento da lista, então retorna True 
                   | otherwise = my_elem n (xs) -- Se não, continua

uniqueList :: (Eq a) => [a] -> Bool
uniqueList []                    = True
uniqueList (x:xs) | my_elem x xs = False
                  | otherwise    = uniqueList xs


-- | 4) Checa se todos os blocos tem elementos unicos
checkSudoku :: (Eq a) => [[a]] -> Bool
checkSudoku []                             = True
checkSudoku (xs:xss) | not (uniqueList xs) = False
                     | otherwise = uniqueList xss


                   
