-- Ejercicio 5: multiplicar todos los elementos de una lista con foldl.

multiplicarLista :: [Int] -> Int
multiplicarLista lista = foldl (*) 1 lista

main :: IO ()
main = do
  putStrLn "Ingrese numeros separados por espacios (ej: 2 3 4):"
  input <- getLine
  let lista = map read (words input) :: [Int]
  putStrLn $ "Lista ingresada: " ++ show lista
  putStrLn $ "Producto: " ++ show (multiplicarLista lista)
