moduloVector :: [Double] -> Double
moduloVector coordenadas = sqrt (sum [x ^ 2 | x <- coordenadas])

main :: IO ()
main = do
    let vector = [3.0, 4.0]  -- Vector (3, 4)
    let modulo = moduloVector vector
    putStrLn $ "El módulo del vector " ++ show vector ++ " es: " ++ show modulo
