a = "1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8 ,8, 9, 86, 75, 75, 56"
opcion = ""
suma = 0
resta = 0
pares = 0
impares = 0
mayor = 0
menor = 0




while opcion != "salir"
    puts "Elige una opción: suma, resta, pares, impares, mayor, menor o salir para terminar el programa."
    opcion = gets.chomp
    arreglo = a.split(",")

    if opcion == "suma"
        for i in 0..arreglo.length
            suma += arreglo[i].to_i
            
        end
            puts "La suma total de los números es #{suma}"
        

    elsif opcion == "resta"
        for i in 0..arreglo.length
            resta -= arreglo[i].to_i
        end
            puts "La resta total de los números es #{resta}" 

    elsif opcion == "pares"
        for i in 0..arreglo.length 
            if i.even?
                pares += 1
            end
        end            
            puts "La cantidad de numeros pares es #{pares}"
    
    elsif opcion == "impares"
        for i in 0..arreglo.length 
            if i.odd?
                impares += 1
            end
        end            
            puts "La cantidad de numeros impares es #{impares}"

    elsif opcion == "mayor"
        arregloint = []
        for i in arreglo
            arregloint << i.to_i
        end
        puts "el numero mayor es #{arregloint.max}"

    elsif opcion == "menor"
        arregloint = []
        for i in arreglo
            arregloint << i.to_i
        end
        puts "el numero menor es #{arregloint.min}"
        
    else
        
    end
end