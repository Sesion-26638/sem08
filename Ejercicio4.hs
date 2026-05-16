import Data.Char (toUpper)

mayusculizar :: String -> String -> String
mayusculizar oracion parte
  | elem parte (words oracion) =
      unwords [if w == parte then map toUpper w else w | w <- words oracion]
  | otherwise = oracion

main :: IO ()
main = do
  putStrLn "Ingrese una oracion:"
  oracion <- getLine
  putStrLn "Ingrese la palabra especifica:"
  parte <- getLine

  if elem parte (words oracion)
    then putStrLn $ "Resultado: " ++ mayusculizar oracion parte
    else putStrLn "La palabra no esta en la oracion."
