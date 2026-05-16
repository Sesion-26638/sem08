-- Ejercicio 6: tuplas (nombre, longitud) solo para nombres con menos de 5 caracteres.

nombresCortos :: [String] -> [(String, Int)]
nombresCortos nombres =
  map (\n -> (n, length n)) (filter (\n -> length n < 5) nombres)

main :: IO ()
main = do
  putStrLn "Ingrese nombres separados por espacios:"
  input <- getLine
  let lista = words input
  putStrLn $ "Nombres ingresados: " ++ show lista
  putStrLn $ "Nombres cortos: " ++ show (nombresCortos lista)
