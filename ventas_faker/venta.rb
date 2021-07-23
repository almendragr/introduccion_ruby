require_relative 'generador_productos'
require_relative 'pedido'
require_relative 'gestor_datos'

class Venta

    attr_reader :pedido
    attr_reader :inventario
    

    def initialize
        crear_inventario
        mostrar_inventario
        crear_pedido
    end

    def crear_inventario
        @inventario = [] # infinitos productos 
        10.times do
            @inventario << GeneradorProductos.generar
        end
    end

    def mostrar_inventario
        # Mostrar inventario al usuario
        puts "===== \t Su tienda amiga \t ====="
        puts "Inventario: 📦"
        @inventario.each do |producto|
            puts "\t#{producto.codigo}\t\t#{producto.nombre}\t\t\t💲 #{producto.precio}\t\t#{producto.marca}\t#{producto.categoria}\t"
        end
    end

    def crear_pedido
        @pedido = Pedido.new
    end

    def comenzar
        codigo_producto = ""
        while codigo_producto != "fin"
            #mostrar un mensaje que pida el codigo del producto
            print "Ingrese el codigo del producto: "
            #recibir codigo y buscarlo en inventario
            codigo_producto = gets.chomp
            if codigo_producto != "fin"
                producto_encontrado = @inventario.select do |producto|
                                        producto.codigo == codigo_producto
                                    end

                                    #si no lo encuentro, mostrar un mensaje al usuario                   
                if producto_encontrado.count == 0
                    puts "El codigo : #{codigo_producto} no esta en inventario"
                else
                #si encuentro el codigo, agregarlo a la lista de pedodios 
                    @pedido.productos << producto_encontrado [0]
                    puts "El producto #{codigo_producto} fue agregado al pedido"
                end
            end
        end
        @pedido.mostrar_resumen_pedido
        GestorDatos.generar_csv(self)
    end
end