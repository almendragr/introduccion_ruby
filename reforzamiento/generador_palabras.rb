require 'faker'

class GeneradorPalabras

    def self.generar
        al_azar = rand(0..3)

        if al_azar == 0
        puts "Pista!: It's a planet"
        return generar_planeta

            elsif al_azar == 1
            puts "Pista!: Vocabulario del curso"
            return generar_palabra_estatica
            
            elsif al_azar == 2
            puts "Pista!: Album de Rush"
            return generar_album_rush

            elsif al_azar == 3
            puts "Pista!: Es un personaje de Friends"
            return generar_personaje_friends

        end
    end

    private
    # creamos un método que sea dueño la clase
    def self.generar_palabra_estatica
        palabras_secretas = ["teams", "programacion", "ruby", "windows", "ubuntu", "terminal", "html", "css", "javascript", "vscode", "microsoft", "linux", "marktext", "github"]
        posicion_al_azar = rand(0..palabras_secretas.length-1)
        return palabras_secretas[posicion_al_azar]
    end

    def self.generar_planeta
        return Faker::Space.planet.downcase
    end

    def self.generar_album_rush
        return Faker::Music::Rush.album.downcase
    end

    def self.generar_personaje_friends
        return Faker::TvShows::Friends.character.downcase
    end
end