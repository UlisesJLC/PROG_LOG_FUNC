import Data.List (sort)

media :: [Double] -> Double
media muestra = sum muestra / fromIntegral (length muestra)

desviacionEstandar :: [Double] -> Double
desviacionEstandar muestra =
  let m = media muestra
      n = fromIntegral $ length muestra
      cuadradosDiferencias = map (\x -> (x - m) ^ 2) muestra
  in sqrt (sum cuadradosDiferencias / n)

puntuacionTipica :: Double -> [Double] -> Double
puntuacionTipica x muestra = (x - media muestra) / desviacionEstandar muestra

valoresAtipicos :: [Double] -> [Double]
valoresAtipicos muestra =
  let puntuaciones = map (\x -> abs (puntuacionTipica x muestra)) muestra
  in [x | (x, p) <- zip muestra puntuaciones, p > 3 || p < -3]

main :: IO ()
main = do
    let muestra = [10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 1000.0]  -- Muestra de números
    let atipicos = valoresAtipicos muestra
    putStrLn $ "Valores atípicos en la muestra: " ++ show atipicos
