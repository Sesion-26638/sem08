suma::[Int]->[Int]

suma x = filter (>18)x

main::IO()
main=do
    putStrLn "Ingrese la lista de edades a filtrar: "
    edades<-getLine
    let ed = read edades :: [Int]
    let res = suma ed
    putStrLn $ "La lista de edades es: " ++ show ed
    putStrLn $ "La lista de edades filtrada es: " ++ show res
