numeros = [1, 4, 5, 7, 46, 86, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8, 8, 9, 86, 75, 75, 56]
opcion = "" #lo que el usuarioescriba (suma,resta,pares,etc.)

suma = 0
resta = 0
pares = 0
impares = 0
mayor = 0
menor = 0

opcion = gets.chomp

arreglo_numeros = numeros.split(",")
puts "Ingrese operacion"

if option == "suma"
    for i in 0..arreglo_numeros.length
        suma += arreglo_numeros[i].to_i
        puts "La suma total es #{suma} de la lista de numeros"   
elsif opcion == "resta"
elsif opcion == "pares"
elsif opcion == "impares"
elsif opcion == "mayor"
elsif opcion == "menor"
else "error"

end

.include?(value) => devuelve true or false
.last => devuelve el último objeto en el Range
.max => devuelve el valor máximo en el Range
.min => devuelve el valor mínimo en el Range


#Si el usuario ingresa la palabra "suma", debe imprimir la suma de todos los números
#Si el usuario ingresa la palabra "resta", debe imprimir la resta de todos los números
#Si el usuario ingresa la palabra "pares", debe imprimir la cantidad de números pares
#Si el usuario ingresa la palabra "impares", debe imprimir la cantidad de números
#impares
#Si el usuario ingresa la palabra "mayor", debe imprimir el número mayor de toda la lista
#Si el usuario ingresa la palabra "menor", debe imprimir el número menor de toda la
#lista'