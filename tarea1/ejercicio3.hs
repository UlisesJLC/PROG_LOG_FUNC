import qualified Data.Map as Map


contarLongitudes :: String -> Map.Map String Int
contarLongitudes frase = Map.fromListWith (+) [(palabra, length palabra) | palabra <- palabras]
    where palabras = words frase


main :: IO ()
main = do
    let frase = "Esta es una frase de ejemplo"
    let diccionario = contarLongitudes frase
    print diccionario
