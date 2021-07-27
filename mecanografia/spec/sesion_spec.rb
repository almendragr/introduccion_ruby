require_relative "../lib/sesion"

RSpec.describe Sesion do
    # Controla el flujo del juego
    # por cada sesión tengo un texto guía
    # la sesión terminar cuando el usuario
    # tiene la cadena completa y correcta
    # mostrar el tiempo de la sesión

    it "con texto guia diferente de vacío o nil" do
        sesion = Sesion.new(5)

        resultado = sesion.guia

        expect(resultado.join).not_to eq("")
        expect(resultado).not_to eq(nil)
        
    end

    it "tiempo inicial debe ser diferente de nil" do
        sesion = Sesion.new(10)

        resultado = sesion.tiempo_inicial

        expect(resultado).not_to eq(nil)
        expect(resultado.class).to eq(Time)
    end
end