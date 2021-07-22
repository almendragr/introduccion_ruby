# 3. Estamos desarrollando un módulo de compras para su página de ventas, y se dió cuenta que
# muchas de las personas que ingresan lo hacen desde diferentes países, por lo que dejar un solo
# precio de un solo país no lo hace muy práctico. Utilizando los métodos gets y puts, se deben
# generar la siguiente opciones para que los usuarios introduzcan un valor y lo transforme en
# otro, como se muestra en la tabla:
# Entrada           Salida
# Dólares           Pesos colombianos
# Pesos chilenos    Dólares
# Dólares           Soles
# - Estas conversiones deben estar "agrupadas" por métodos.

# Entregar en el buzón: Hashes (Core)
# Se está desarrollando un módulo de software para poder generar contraseñas de forma
# aleatoria y segura para usuarios debido a la cantidad de hackeos seguidos que han aparecido en
# tu empresa. Es necesario introducir cada uno de los usuarios con sus contraseñas seguras
# utilizando SecureRandom.
# Utilizar Hash para guardar la información.
# require 'securerandom'

# 1. dolares => pesos colombianos
# 2. pesos chilenos => dolares
# 3. dolares => soles
require_relative("modulo_divisas")  # nombre del archivo
include ModuloDivisas               # nombre del módulo
#entrada
puts "Introducir el monto a convertir"
montos = gets.chomp.to_i

puts "1. dolares => COP"
puts "2. pesos chilenos => dolares"
puts "3. dolares => Soles"
convertir = gets.chomp

# lógica

if convertir == "1"
    convertir_dolares_pesos_colombianos(montos)
elsif convertir == "2"
    convertir_pesos_chilenos_dolares(montos)
elsif convertir == "3"
    convertir_dolares_a_soles(montos)
else
    puts "Cambio no disponible"
end