require_relative "../lib/observador_teclado"

RSpec.describe ObservadorTeclado do


    context "armando la entrada del usuario" do

        it "cuando todo está bien" do
            # validacion de la cadena
            # => a b c d
            # <= b d e eeeeakñljdsflñakjs # false
            # <= a b c d                  # true
            guia = "a d b a e f e"
            letra_nueva = "a d b" # gets.chomp => escribiera la letra a y luego enter 
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(true)

            letra_nueva = "a d b a" # gets.chomp => escribiera la letra a y luego enter 
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(true)
        end

        it "cuando la cadena esta mal" do
            guia = "a d b a e f e"
            letra_nueva = "e f e" # gets.chomp => escribiera la letra a y luego enter 
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(false)
        end
    end

    it "pendiente del enter"

end