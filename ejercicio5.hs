type Inmueble = (Int, Int, Int, Bool, Char) 

precioInmueble :: Inmueble -> Float
precioInmueble (año, metros, habitaciones, garaje, zona)
    | zona == 'A' = fromIntegral (metros * 1000 + habitaciones * 5000 + if garaje then 15000 else 0) * (1 - fromIntegral (2024 - año) / 100)
    | zona == 'B' = fromIntegral (metros * 1000 + habitaciones * 5000 + if garaje then 15000 else 0) * (1 - fromIntegral (2024 - año) / 100) * 1.5
    | otherwise   = 0.0  

buscarInmuebles :: [Inmueble] -> Float -> [Inmueble]
buscarInmuebles inmuebles presupuesto = filter (\inmueble -> precioInmueble inmueble <= presupuesto) inmuebles

-- Ejemplo de uso:
inmuebles :: [Inmueble]
inmuebles = [(2000, 100, 3, True, 'A'), (2012, 60, 2, True, 'B'), (1980, 120, 4, False, 'A'), (2005, 75, 3, True, 'B'), (2015, 90, 2, False, 'A')]

presupuesto :: Float
presupuesto = 100000.0

inmueblesFiltrados :: [Inmueble]
inmueblesFiltrados = buscarInmuebles inmuebles presupuesto

-- Agregar el precio a cada inmueble filtrado
inmueblesConPrecio :: [Inmueble]
inmueblesConPrecio = map (\inmueble -> inmueble ++ [("precio", precioInmueble inmueble)]) inmueblesFiltrados
