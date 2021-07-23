require 'csv'

class GestorDatos

    # clase encargada
    # almacenar los
    # pedidos
    def self.guardar_pedido(pedido)
        # lógica para guardar el pedido
    end

    def self.generar_csv(venta)
        CSV.open("Pedidos/Pedido_#{venta.pedido.codigo}.csv", "wb") do |csv|
    #("nombre del archivo", "que voy a hacer con el, en este caso escribir")
    #|csv| representa al archivo en si para poder manipularlo en codigo.
        csv << ["Codigo", "Nombre", "Precio", "Marca", "Categoria"]
        #al archivo le creo una nueva fila (cabecera)
            venta.pedido.productos.each do |p|
            #p representa la variable
            csv << [p.codigo, p.nombre, p.precio, p.marca, p.categoria]
            end
        end
    end
end