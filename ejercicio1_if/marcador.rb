# preparación de datos
#["3", "4"]
#   0    1

marcador_local = marcador.plit("-")[0].to_i # => "3".to_i =>3
marcador_visitante = marcador.split("-") [1].to_i

if marcador_local > marcador_visitante
    mensaje1 = "el equipo local es el ganador"
    puts mensaje1
elsif marcador_local < marcador_visitante
    mensaje2 = "el equipo visitante es el ganador"
    puts mensaje2
elsif marcador_local == marcador_visitante
    mensaje3 = "empate"
    puts mensaje3
end