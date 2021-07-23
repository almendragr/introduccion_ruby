require 'faker'
require_relative 'producto'

class GeneradorProductos
    
    def self.generar
        producto_nuevo = Producto.new
        producto_nuevo.nombre       = generar_nombre(producto_nuevo)
        producto_nuevo.precio       = rand(1000..50000)
        producto_nuevo.codigo       = Faker::Barcode.ean
        producto_nuevo.marca        = obtener_marca
        producto_nuevo.presentacion = Faker::Food.measurement
        ## producto_nuevo.categoria    = otener_categoria
        return producto_nuevo
    end

    private

    def self.generar_nombre(producto)
        case rand(0..2)
        when 0
            producto.categoria = "frutas"
            return Faker::Food.fruits
        when 1
            producto.categoria = "vegetales"
            return Faker::Food.vegetables
        when 2
            producto.categoria = "platos"
            return Faker::Food.dish
        end
    end

    def self.obtener_marca
        marcas = ["a", "b", "c", "d", "e", "f"]
        return marcas.sample
    end

    # def obtener_categoria
    #     # obtener una categoria
    # end

end