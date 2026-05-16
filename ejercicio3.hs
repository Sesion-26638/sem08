contar::[Int]->Int

contar x = sum $ fmap (\x -> 1) x
    
main::IO()
main=do
    putStrLn "Ingrese la lista a contar: "
    list<-getLine
    let l = read list :: [Int]
    let con = contar l
    putStrLn $ "La lista es: " ++ show l
    putStrLn $ "La cantidad de elementos es: " ++ show con