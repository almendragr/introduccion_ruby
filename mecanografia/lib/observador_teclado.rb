class ObservadorTeclado

    def self.validar_con_espacios(guia, cadena_nueva)
        #   "a d b a" == "a d"
        return guia.start_with? cadena_nueva
    end
end