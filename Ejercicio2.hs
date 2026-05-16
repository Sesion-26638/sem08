mayoresDeEdad :: [Int] -> [Int]
mayoresDeEdad edades = filter (>= 18) edades

leerLista :: String -> [Int]
leerLista input
  | '[' `elem` input = read input
  | otherwise        = map read (words input)

main :: IO ()
main = do
  putStrLn "Ingrese edades separadas por espacios (ej: 12 18 25 17 30) o [12,18,25,17,30]:"
  input <- getLine
  let edades = leerLista input
  putStrLn $ "Edades ingresadas: " ++ show edades
  putStrLn $ "Mayores o iguales a 18: " ++ show (mayoresDeEdad edades)
