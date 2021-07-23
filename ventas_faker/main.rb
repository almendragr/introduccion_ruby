# PEDIDOS DE PRODUCTOS 🖐   
# Utilizando la gema *faker* y clases, generar listas de productos 
# (los que puedan generar de forma aletoria con faker) a los que un usuario 
# podrá realizar un pedido con al menos un producto. Cuando al usuario finalice 
# de agregar productos a su pedido, se deberá crear un archivo .csv donde se pueda 
# detallar el nombre del producto, la cantidad que se requiere, la fecha que 
# realizó el pedido y la fecha que debería entregarse el pedido. Las clases que 
# se pueden llegar a ocupar son las siguientes:   
# - Producto
# - Pedido
# - GeneradorProductos
# - GeneradorPedidos
# - GestorDatos

#Desarrollo
#Software de pedido
#Mostrar productos a usuario y que pueda agregarlos
#Cuando ya no quiera mas productos, que se guarde en un .csv

require_relative 'venta'

comando =""
while comando != "n"
    venta = Venta.new
    venta.comenzar

    puts "Quiere hacer otro pedido (s/n)"
    comando = gets.chomp
end
