#Desarrollar un programa que permita al usuario ingresar el valor de sus ventas diarias por
#consola. Para finalizar el ingreso de los datos se de escribir -1. Después mostrar las
#siguientes opciones:
#1. Promedio de ventas del día
#2. Suma total de toda la venta del día

puts "Ingrese el valor de sus ventas diarias"

venta=gets.to_i
begin venta == 0
    suma =venta + venta
end
promedio+=1  
end while venta == -1 

puts "El total de sus ventas es: #{suma}"
puts "El total de sus ventas es: #{promedio}"
