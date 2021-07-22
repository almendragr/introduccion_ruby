require_relative 'generador_palabras'

class Juego

    attr_reader :palabra_secreta
    attr_reader :vidas

    def initialize

        @palabra_secreta = GeneradorPalabras.generar
        @vidas = 5
    end
    puts "Bienvenido al ahorcado"
    def comenzar

        guiones = cambiar_letras_a_guiones_1
        puts guiones
        
        while guiones.gsub(" ", "") != @palabra_secreta and @vidas > 0
            #gsub esta reemplazando el espacio por nada
            puts "Te quedan solo #{@vidas} vidas"
            letra = gets.chomp
            letra_encontrada = false

            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    # palabra_secreta => hola
                    #                    0123
                    # guiones         => _ _ _ _ 
                    #                    01234567
                    guiones[posicion_letra * 2] = letra
                    letra_encontrada = true
                end
            end

            if letra_encontrada == false
                @vidas -= 1
            end

            puts guiones
            # preguntar si esta letra existe en mi palabra
            # si existe debería cambiar el guion por la letra
        end
        he_ganado?
    end

    private

    def cambiar_letras_a_guiones_1
        return "_ " * @palabra_secreta.length
    end

    def he_ganado?
        if @vidas > 0
            puts "Ganaste!"
        else
            puts "Ahorcado!"
        end
        puts "La palabra secreta es #{@palabra_secreta}"
    end
end 
