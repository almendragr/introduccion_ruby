require_relative "../lib/calculadora"
RSpec.describe Calculadora do
#cabecera para iniciar las pruebas, puede ir describe solo. Poner lo que esta en azul es una buena practica

    context "sumar numeros" do
        it "cuando son iguales" do
            #configuracion
            calc = Calculadora.new
            #Ejecucion
            resultado = calc.sumar(2, 2)
            #expectativa            
            expect(resultado).to eq(4)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.sumar(2, -2)
            expect(resultado).to eq(0)
        end
        it "cuando los 2 son positivos" do
            calc = Calculadora.new
            resultado = calc.sumar(2, 2)
            expect(resultado).to eq(4)
        end
        it "cuando los 2 son negativos" do
            calc = Calculadora.new
            resultado = calc.sumar(-2, -2)
            expect(resultado).to eq(-4)
        end
    end

    describe "restar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.restar(2, 2)           
            expect(resultado).to eq(0)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.restar(2, -2)           
            expect(resultado).to eq(4)
        end
        it "cuando los 2 son positivos" do
            calc = Calculadora.new
            resultado = calc.restar(2, 2)           
            expect(resultado).to eq(0)
        end
        it "cuando los 2 son negativos" do
            calc = Calculadora.new
            resultado = calc.restar(-2, -2)           
            expect(resultado).to eq(0)
        end
    end
        
    describe "multiplicar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2, 2)            
            expect(resultado).to eq(4)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2, -2)            
            expect(resultado).to eq(-4)
        end
        it "cuando los 2 son positivos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2, 2)            
            expect(resultado).to eq(4)
        end
        it "cuando los 2 son negativos" do   
            calc = Calculadora.new
            resultado = calc.multiplicar(-2, -2)            
            expect(resultado).to eq(4)
        end
    end


    describe "dividir numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.dividir(2, 2)            
            expect(resultado).to eq(1)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.dividir(2, -2)            
            expect(resultado).to eq(-1)
        end
        it "cuando los 2 son positivos" do
            calc = Calculadora.new
            resultado = calc.dividir(2, 2)            
            expect(resultado).to eq(1)
        end
        it "cuando los 2 son negativos" do
            calc = Calculadora.new
            resultado = calc.dividir(-2, -2)            
            expect(resultado).to eq(1)
        end
    end
        
        
                
    context "datos invalidos" do
        it "cuando uno es una letra"
        it "cuando enviamos signos en vez de numeros"
    end
end

#describe y context sirven para lo mismo. Me sirve para dar un contexto 
#Se puede poner el it solo tambien en casos que son especificos y no voy a dar un monton de opciones para el contexto inicial
