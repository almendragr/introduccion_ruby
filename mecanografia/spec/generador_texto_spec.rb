require_relative '../lib/generador_texto'

RSpec.describe GeneradorTexto do

    it "con solo letras" do
        #preparación
        #ejecución
        resultado_letras = GeneradorTexto.letras(10)
        # ["f", "j", "f", "j", "f", "j", "f", "j", "f", "j"]
        #prueba
        expect(resultado_letras.count).to eq(10)

        # preparación
        suma_letras = 0
        #ejecución
        resultado_letras = GeneradorTexto.letras(15)
        resultado_letras.each do |letra|
            suma_letras += letra.length
        end
        #prueba
        expect(suma_letras).to eq(15)

    end

    it "con palabras cortas"
    it "con combinaciones de teclas" # qwert - yuiop

end