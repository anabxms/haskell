-- Recebe uma lista de funçoes e um parâmetro e retorna uma lista das funções parcialmente aplicadas
decom :: [(a -> b -> b)] -> a -> [(b -> b)]
decom [] _       = []
decom (f : fs) x = f x : decom fs x

resolve :: [(b -> b)] -> b -> [b]
resolve [] _       = []
resolve (f : fs) y = f y : resolve fs y

-- Se na função do aplicador ele receber a lista de func e receber os 2 valores x
-- Ele vai fazer o decom em toda a lista de listas
-- E vair iterar entre a lista gerada aplicando ela a cada recebido y

aplicador :: [(a -> b -> b)] -> a -> b -> [b]
aplicador [] _ _    = []
aplicador funcs x y = resolve (decom funcs x) y
