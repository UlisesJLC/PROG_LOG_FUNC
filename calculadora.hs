import System.IO


seno :: Floating a => a -> a
seno x = sin x

coseno :: Floating a => a -> a
coseno x = cos x

tangente :: Floating a => a -> a
tangente x = tan x

exponencial :: Floating a => a -> a
exponencial x = exp x

logaritmoNeperiano :: Floating a => a -> a
logaritmoNeperiano x = log x


calcularTabla :: IO ()
calcularTabla = do
    putStrLn "Ingrese el valor para calcular la tabla:"
    input <- getLine
    let valor = read input :: Double
    putStrLn "Seleccione la función (seno, coseno, tangente, exponencial, logaritmo):"
    funcion <- getLine
    putStrLn "Tabla:"
    putStrLn "Entero | Resultado"
    putStrLn "-----------------"
    mapM_ (\x -> putStrLn $ show x ++ " | " ++ calcularResultado funcion x) [1..truncate valor]

calcularResultado :: String -> Int -> String
calcularResultado "seno" x = show (seno (fromIntegral x))
calcularResultado "coseno" x = show (coseno (fromIntegral x))
calcularResultado "tangente" x = show (tangente (fromIntegral x))
calcularResultado "exponencial" x = show (exponencial (fromIntegral x))
calcularResultado "logaritmo" x = show (logaritmoNeperiano (fromIntegral x))
calcularResultado _ _ = "Función no válida"

main :: IO ()
main = calcularTabla
