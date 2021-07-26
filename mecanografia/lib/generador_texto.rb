class GeneradorTexto
    def  self.letras(cantidad_para_crear)
        abecedario = ["a", "b", "c", "d" , "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        lista_letras = abecedario.sample(cantidad_para_crear)
        return lista_letras
    end
end