require 'faker'

class Pedido
    
    attr_reader   :codigo           # 
    attr_reader   :total            # la suma total del  pedido
    attr_accessor :productos        # almacenar una lista/array de productos
    attr_reader   :fecha_creacion   # fecha de hoy
    attr_accessor :fecha_entrega    # sumar a la fecha de hoy 2 días
    attr_reader   :estado           # preparando / enviando / entregado 
    
    def initialize
        @codigo         = Faker::Barcode.ean
        @total          = 0
        @productos      = []
        @fecha_creacion = Time.now.strftime("%d/%m/%Y")
        @fecha_entrega  = Faker::Date.forward(days: 2)
        @estado         = "preparando"
    end

    def mostrar_resumen_pedido
        puts " ===== RESUMEN PEDIDO ===="
        puts "Codigo:           #{self.codigo}"
        puts "Fecha creacion:   #{self.fecha_creacion}"
        puts "Fecha entrega:    #{self.fecha_entrega}"
        puts "Estado:           #{self.estado}"

        self.productos.each do |producto|
            puts "\t\t#{producto.nombre} \t\t #{producto.precio}"
        end
        puts "_____________________"
        puts "Total a pagar es \t\t #{suma_total}"
    end

    def suma_total
        #map genera una nueva lista con el ultimo elemento del bloque
        precios = self.productos.map do |producto|
            producto.precio
        end
        return precios.sum
    end
end