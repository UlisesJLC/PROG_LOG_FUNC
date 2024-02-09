
aplicarDescuento :: Double -> Double -> Double
aplicarDescuento precio descuento = precio - (precio * descuento / 100)


aplicarIVA :: Double -> Double -> Double
aplicarIVA precio iva = precio + (precio * iva / 100)

precioFinalCesta :: [(Double, Double)] -> (Double -> Double -> Double) -> Double
precioFinalCesta [] _ = 0
precioFinalCesta ((precio, porcentaje):productos) funcion =
    funcion precio porcentaje + precioFinalCesta productos funcion

main :: IO ()
main = do
    let cesta = [(100, 10), (200, 15), (150, 5)]  
    let precioFinalDescuentos = precioFinalCesta cesta aplicarDescuento
    let precioFinalIVA = precioFinalCesta cesta aplicarIVA
    putStrLn $ "Precio final con descuentos: " ++ show precioFinalDescuentos
    putStrLn $ "Precio final con IVA: " ++ show precioFinalIVA
