#Utilizar la documentación para conocer realizar el siguiente ejercicio. 
#Dada una cadena ingresada por el usuario, reemplazar todas las a por x

puts "Ingrese un texto"
cadena = gets
recibida = cadena.gsub "a", "x"
recibida = recibida.gsub "e", "y"
recibida.gsub! "i", "z"

puts "Tu texto con x reemplanzando a las a es: " + recibida




