#Desarrollar un programa que permita al usuario ingresar el valor de sus ventas diarias por
#consola. Para finalizar el ingreso de los datos se de escribir -1. Después mostrar las
#siguientes opciones:
#1. Promedio de ventas del día
#2. Suma total de toda la venta del día

suma=0
venta=0
num = 0
opcion=""
while opcion != "-1"
    puts "Ingrese el valor de sus ventas diarias"
    venta = gets.chomp.to_i
    suma = suma + venta
    num = num+1
    puts "Para agregar otro monto presione enter, Para salir digite -1"

    opcion = gets.chomp
end
puts "El total de sus ventas es: #{suma}"
puts "El total de sus ventas es: #{suma/num}"