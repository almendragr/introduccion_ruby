require_relative "../lib/observador_teclado"
RSpec.describe ObservadorTeclado do

    context "armando la entrada del usuario" do    
        
        it "cuando todo esta bien" do               
            guia = "a d b a e f e"
            letra_nueva = "a d b"
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(true)

            letra_nueva = "a d b a"
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(true)


        end
        it "cuando la cadena esta mal" do
            guia = "a d b a e f e"
            letra_nueva = "ad"
            resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)
            expect(resultado).to eq(false)
        end
    end
end