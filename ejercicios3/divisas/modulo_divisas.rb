module ModuloDivisas

    # métodos
    def convertir_dolares_pesos_colombianos(monto_en_dolares)
        cop = monto_en_dolares * 3800
        puts "#{monto_en_dolares} $ => #{cop} COP"
    end

    def convertir_pesos_chilenos_dolares(monto_pesos_chilenos)
        dolares = monto_pesos_chilenos / 756
        puts "#{monto_pesos_chilenos} => #{dolares}$"
    end

    
    def convertir_dolares_a_soles(monto_en_dolares)
        soles = monto_en_dolares * 3.96
        puts "#{monto_en_dolares}$ => #{soles} S."
    end

end