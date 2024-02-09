import qualified Data.Map as Map

asignarCalificacion :: Int -> String
asignarCalificacion nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise = "Desempeño insuficiente"

asignarCalificaciones :: Map.Map String Int -> Map.Map String String
asignarCalificaciones diccionario = Map.fromList [(map toUpper asignatura, asignarCalificacion nota) | (asignatura, nota) <- Map.toList diccionario]
    where toUpper = map toUpper

main :: IO ()
main = do
    let notas = Map.fromList [("Matemáticas", 85), ("Ciencias", 70), ("Historia", 95)]
    let calificaciones = asignarCalificaciones notas
    print calificaciones
