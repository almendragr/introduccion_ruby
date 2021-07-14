# Guardar datos con llaves
# llave => valor

# Tipos de datos
texto   = ""
texto2  = ''
num     = 2
bool    = false
# colecciones de datos
lista   = []
hash    = {}

# Video club donde tenemos películas
# Datos de Entrada
serie_1 = {
    nombre: "Sweet Tooth",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "En un mundo postapocalíptico, Gus, un niño mitad humano y mitad ciervo, busca un nuevo comienzo junto a Jeppers, un vagabundo con una vida solitaria.",
    genero: "drama"
}
serie_2 = {
    nombre: "Resident Evil",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "Un mundo de zombies",
    genero: "drama"
}
serie_3 = {
    nombre: "Atypical",
    formato: "Serie",
    temporadas: 4,
    sinopsis: "Un adolescente con autismo está listo para enamorarse. Para comenzar a salir y encontrar el amor, necesita ser más independiente.",
    genero: "drama"
}
serie_4 = {
    nombre: "The Witcher",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "El brujo Geralt, un cazador de monstruos, trata de encontrar su lugar en un mundo en el que las personas suelen ser más malvadas que las bestias.",
    genero: "acción"
}
serie_5 = {
    nombre: "La chica nueva",
    formato: "Serie",
    temporadas: 2,
    sinopsis: "Nanno, una niña misteriosa e inteligente, se traslada a diferentes escuelas, exponiendo las mentiras y las faltas de los estudiantes y profesores en todo momento.",
    genero: "drama, misterior, thriller, terror"
}

# Agrupar las series en una lista
series = [
    serie_1, serie_2, serie_3, serie_4, serie_5
]


# Caja de lógica - Salida
# Mensajes en consola donde se muestre el nombre y el formato
for serie in series
    puts "Nombre: #{serie[:nombre]} \t Formato: #{serie[:formato]}" 
end
puts "====="
