-- 1) Concatenar as listas
-- Função concat em Haskell:
-- concat :: [[a]] -> [a]
-- concat = foldr (++) []
my_concat :: [[a]] -> [a]
my_concat []       = []
my_concat (x : xs) = x ++ my_concat xs

-- 2) Encontrar os duplicados da lista concatenada
my_elem :: (Eq a) => a -> [a] -> Bool           -- Recebe uma variavel e uma lista e retorna True ou False
my_elem n []                   = False          -- Se tem a variavel e a lista está vazia, então não é igual
my_elem n (x : xs) | n == x    = True           -- Se a variável é igual ao elemento da lista, então retorna True 
                   | otherwise = my_elem n (xs) -- Se não, continua

-- 3) Remove os elementos duplicados
my_nub :: (Eq a) => [a] -> [a]                  -- Recebe uma lista e retorna outra - semelhante a função nub
my_nub []                      = []             -- Se as listas forem vazias, retorna vazia
my_nub (x : xs) | my_elem x xs = my_nub xs      -- Se a lista não ta vazia, então ele confere se os elementos são iguais, se são ele continua com a recursão
                | otherwise    = x : my_nub xs  -- Se os elementos não forem iguais, ele add na lista

-- 4) Concatenar e remover
remove :: (Eq a) => [[a]] -> [a]
remove [] = []
remove x  = my_nub (my_concat x)
