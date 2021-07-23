# entrada
numeros = "1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567"

opcion = "" # aquí vamos a guardar lo que el usuario escriba

# salida
suma = 0
resta = 0
pares = 0
impares = 0
mayor = 0
menor = 0

# proceso

# opciones: suma, resta, pares, impares, mayor, menor
# while vueltas >= 0

while opcion != salir

    puts "Escribir una de las siguientes opciones: suma, resta, pares, impares, mayor, menor"
    opcion = gets.chomp   
    arreglo_numeros = numeros.split(",")

    if opcion == "suma"
        # sumar todos los números
        # FOR ayuda a repetir código
        for i in 0..arreglo_numeros.length
            suma += arreglo_numeros[i].to_i
        end
        # puts arreglo_numeros[0].to_i + arreglo_numeros[1].to_i + arreglo_numeros[2].to_i
        puts "La suma total es #{suma} de la lista de los números"
        #puts "La suma total es " + suma.to_s + " de la lista de los números" (otra manera)

    elsif opcion == "resta"
        # restar todos los números
        for i in 0..arreglo_numeros.length
            resta -= arreglo_numeros[i].to_i
        end
        puts "La resta total es #{resta} de la lista de los números"

    elsif opcion == "pares"
        # contar los números pares
        for i in 0..arreglo_numeros.length 
        if i.even?
            pares += 1
        end
        puts "La cantidad de numeros pares de la lista es #{pares}"
    
        
    elsif opcion == "impares"
        # contar los números impares
        for i in 0..arreglo_numeros.length 
        if i.odd?
            impares += 1
        end
        puts "La cantidad de numeros impares de la lista es #{impares}"

    elsif opcion == "mayor"
        # encontrar el número mayor
        arregloint = []
        for i in arreglo_numeros
            arregloint << i.to_i
        end
        puts "el numero mayor de la lista es #{arregloint.max}"

    elsif opcion == "menor"
        # encontrar el número menor
        arreglo_numerosint = []
        for i in arreglo_numeros
            arregloint << i.to_i
        end
        puts "el numero menor de la lista es #{arregloint.min}"

    else
        puts "Escoge una opcion valida"
    end
end

#lista.select 