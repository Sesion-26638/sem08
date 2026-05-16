import Data.Char (toUpper)

convertir :: [String] -> String -> [String]
convertir x y
    | y `elem` x = map (\item -> if item == y then map toUpper item else item) x
    | otherwise = error "El elemento a editar no se encuentra en la lista"

main::IO()
main=do
    putStrLn "Ingrese la lista a evaluar: "
    list<-getLine
    putStrLn "Ingrese el elemento a editar: "
    elemento<-getLine
    let l = words list
    let con = convertir l elemento
    putStrLn $ "La lista es: " ++ show l
    putStrLn $ "La lista convertida es: " ++ unwords con