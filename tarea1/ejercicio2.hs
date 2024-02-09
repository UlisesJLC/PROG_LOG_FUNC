aplicarFuncionLista :: (a -> b) -> [a] -> [b]
aplicarFuncionLista _ [] = []  
aplicarFuncionLista f (x:xs) = f x : aplicarFuncionLista f xs  


doble :: Int -> Int
doble x = 2 * x

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let listaDoble = aplicarFuncionLista doble lista
    putStrLn $ "Lista original: " ++ show lista
    putStrLn $ "Lista con cada elemento duplicado: " ++ show listaDoble

