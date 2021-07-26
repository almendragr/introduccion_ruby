require_relative '../lib/generador_texto'
RSpec.describe GeneradorTexto do
    
    it "con solo letras" do

        resultado_letras = GeneradorTexto.letras(10)
        expect(resultado_letras.count) .to eq(10)
        suma_letras = 0
        resultado_letras = GeneradorTexto.letras(15)
        resultado_letras.each do |letra|
            suma_letras += letra.length
        end
    end
    it "con palabras cortas" do
    end
    it "con combinaciones" do
    end
end