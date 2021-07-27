require_relative "generador_texto"
require_relative "observador_teclado"

class Sesion
    attr_reader :texto_guia_lista
    attr_reader :texto_guia
    attr_reader :tiempo_inicial

    def initialize(cant_letras)
        # a f g h t y i r p o e i k j s d f ñ l k j d s f 

        @texto_guia_lista = GeneradorTexto.letras(cant_letras)
        @texto_guia = @texto_guia_lista.join

        @tiempo_inicial = Time.now
    end

    # deberiá controlar la UI - Consola
    def iniciar
        
        texto_ingresado = ""
        
        puts "|--- Mecanografía ---|"
        
        @texto_guia_lista.each do |letra|
            print "#{letra} "
        end
        puts

        print texto_ingresado
        while texto_ingresado != @texto_guia
            
            system("stty raw -echo")
            letra_ingresada = STDIN.getc
            
            #                   ab           +       c
            futura_cadena = texto_ingresado + letra_ingresada
            
            evaluacion = ObservadorTeclado.validar_con_espacios(@texto_guia, futura_cadena)

            if evaluacion
                texto_ingresado += letra_ingresada
                print letra_ingresada
            end


        end

    end
end