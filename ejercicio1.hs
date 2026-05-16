suma::[Int]->Int
suma []= 0
suma x 
    | length x >= 3 = sum $ take 3 x
    | otherwise = error "ingrese minimo 3 numeros para sumar"

main::IO()
main=do
    putStrLn "Ingrese la lista de numeros a sumar: "
    val<-getLine

    let vl = read val :: [Int]
    let res = suma vl
    putStrLn $ "La suma de los numeros es: " ++ show res
