prng = Random.new
#pseudo-random number generator
oculto = prng.rand(0..100)
num = -1

puts "ADIVINA EL NUMERO!"
intentos = 1

begin oculto != num
    puts "Ingrese valor"
    num = gets.to_i
    #.to_i indica que debe ser un numero
    if num == oculto
        puts "GANASTE con #{intentos} intentos, FELICIDADES!"
    end
    if num < oculto
        puts "El numero #{num} es menor, intenta con uno mayor"
    end
    if num > oculto
        puts "El numero #{num} es mayor, intenta con uno menor"
    end
intentos+=1
end while oculto != num