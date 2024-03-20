import qualified Data.Map as Map

type Asignatura = String
type Nota = Int
type DiccionarioCalificaciones = Map.Map Asignatura Nota

calificacionesAprobadas :: DiccionarioCalificaciones -> DiccionarioCalificaciones
calificacionesAprobadas = Map.mapMaybe aprobarNota

aprobarNota :: Nota -> Maybe Nota
aprobarNota nota
  | nota >= 95 && nota <= 100 = Just nota
  | nota >= 85 && nota <= 94  = Just nota
  | nota >= 75 && nota <= 84  = Just nota
  | nota >= 70 && nota <= 74  = Just nota
  | otherwise                 = Nothing

-- Ejemplo de uso:
calificacionesAlumno :: DiccionarioCalificaciones
calificacionesAlumno = Map.fromList [("Matemáticas", 92), ("Historia", 78), ("Inglés", 88), ("Ciencias", 65), ("Programación", 98), ("Arte", 80)]

calificacionesAprobadasAlumno :: DiccionarioCalificaciones
calificacionesAprobadasAlumno = calificacionesAprobadas calificacionesAlumno

main :: IO ()
main = print calificacionesAprobadasAlumno
