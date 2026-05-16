-- Ejercicio 1: suma los tres primeros elementos. Si hay menos de 3, devuelve 0.

sumaPrimerosTres :: [Int] -> Int
sumaPrimerosTres (a : b : c : _) = a + b + c
sumaPrimerosTres _                 = 0

leerLista :: String -> [Int]
leerLista input
  | '[' `elem` input = read input
  | otherwise        = map read (words input)

main :: IO ()
main = do
  putStrLn "Ingrese enteros separados por espacios (ej: 5 2 1 6 4) o con corchetes [1,2,3]:"
  input <- getLine
  let lista = leerLista input
  putStrLn $ "Lista ingresada: " ++ show lista
  putStrLn $ "La suma de los tres primeros es: " ++ show (sumaPrimerosTres lista)
