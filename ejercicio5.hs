import Data.Char (toUpper)

convertir :: [String]-> [(String,Int)]
convertir x
    | length x < 5 = map (\x -> (x, length x)) (filter (\x -> length x < 5) x)
    | otherwise = error "Los elementos de la lista deben tener menos de 5 caracteres"

main::IO()
main=do
    putStrLn "Ingrese la lista a evaluar: "
    list<-getLine
    let l = words list
    let con = convertir l
    putStrLn $ "La lista es: " ++ show l
    putStrLn $ "La lista convertida es: " ++ show con