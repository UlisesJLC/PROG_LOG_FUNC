calificacionesCategoria :: [Int] -> [String]
calificacionesCategoria = map clasificarNota

clasificarNota :: Int -> String
clasificarNota nota
  | nota >= 95 && nota <= 100 = "Excelente"
  | nota >= 85 && nota <= 94  = "Notable"
  | nota >= 75 && nota <= 84  = "Bueno"
  | nota >= 70 && nota <= 74  = "Suficiente"
  | otherwise                 = "Desempeño insuficiente"


calificaciones :: [Int]
calificaciones = [92, 78, 88, 65, 98, 80]

categorias :: [String]
categorias = calificacionesCategoria calificaciones

main :: IO ()
main = print categorias
