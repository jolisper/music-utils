
def calc_intervalo(nota1, nota2, inversion)
	escala = {	
	'dobb' => 12, 
	'dob' => 0, 
	'do' =>  1, 
	'do#' => 2,
	'do##' => 3,
	'rebb' => 1, 	
	'reb' => 2, 
	're' => 3, 
	're#' => 4,
	're##' => 5,
	'mibb' => 3, 
	'mib' => 4, 
	'mi' => 5, 
	'mi#' => 6,
	'mi##' => 7,
	'fabb' => 4,
	'fab' => 5,
	'fa' => 6,
	'fa#' => 7,
	'fa##' => 8,
	'solbb' => 6,
	'solb' => 7,
	'sol' => 8,
	'sol#' => 9,
	'sol##' => 10,
	'labb' => 8,
	'lab' => 9,
	'la' => 10,
	'la#' => 11,
	'la##' => 12,
	'sibb' => 10,
	'sib' => 11,
	'si' => 12,
	'si#' => 0,
	'si##' => 1,
	}
	
	if inversion
		aux = nota1
		nota1 = nota2
		nota2 = aux
	end
	
	intervalo = escala[nota2] - escala[nota1]

	puts 'nota1: ' + escala[nota1].to_s
	puts 'nota2: ' + escala[nota2].to_s 
	puts 'diff : ' + intervalo.to_s

	if intervalo < 0
		intervalo = 13 + intervalo
	end

	mensaje = "#{intervalo / 2} tono/s"

	if (intervalo % 2 ) >  0
		mensaje += " y 1/2"
	end

	mensaje += " (" +  intervalo.to_s + " semi-tonos)"
end

puts calc_intervalo 'do', 'si##', false

=begin
El contador de intervalos debe ser como una rueda que
gira desde un punto inicial hasta otro punto final 
mientras cuenta los semi-tonos de distancia.

Por Ej:

scale.ini 'do##'
scale.end 're##'
count = scale.count

print count #=> 2
=end

