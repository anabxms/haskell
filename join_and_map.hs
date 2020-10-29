-- 1)  Realizar a operação com cada elemento correspondente das listas 
-- [1, 2, 3, 4] [4, 3, 2, 1]
-- [1+4, 2+3, 3+2, 4+1]
-- [5, 5, 5, 5]
my_join :: (a -> b -> c) -> [a] -> [b] -> [c]
my_join _ _ []             = []
my_join _ [] _             = []
my_join func (x:xs) (y:ys) = func x y : my_join func xs ys

-- 2) Aplicar a função a partir do mymap em toda a minha lista resultante
-- abs [-5, -5, 5, 5]
-- [5, 5, 5, 5]
my_map :: (a -> b) -> [a] -> [b]
my_map _ []        = []
my_map func (x:xs) = func x : my_map func xs

-- 3) Unir as duas funções
joinAndMap :: (a -> b -> c) -> (c -> d) -> [a] -> [b] -> [d] 
joinAndMap _ _ [] [] = []
-- O my map tem que receber como parâmetro a lista gerada pela função join
joinAndMap fjoin fmap x y = my_map fmap (my_join fjoin x y)
