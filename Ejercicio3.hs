-- Ejercicio 3: longitud de una lista sin usar la función nativa length.

miLongitud :: [a] -> Int
miLongitud []     = 0
miLongitud (_:xs) = 1 + miLongitud xs

main :: IO ()
main = do
  putStrLn "Ingrese numeros separados por espacios (ej: 10 20 30 40):"
  input <- getLine
  let lista = map read (words input) :: [Int]
  putStrLn $ "Lista ingresada: " ++ show lista
  putStrLn $ "Longitud: " ++ show (miLongitud lista)
