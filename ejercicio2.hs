filtrarLista :: (a -> Bool) -> [a] -> [a]
filtrarLista _ [] = [] 
filtrarLista f (x:xs)
  | f x       = x : filtrarLista f xs 
  | otherwise = filtrarLista f xs     

esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

listaOriginal :: [Int]
listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

listaFiltrada :: [Int]
listaFiltrada = filtrarLista esPar listaOriginal

main :: IO ()
main = print listaFiltrada
