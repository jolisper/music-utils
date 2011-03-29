
class Interval
  attr_accessor :note1, :note2
end
  
def calc_interv(note1, note2, step)
  natural_notes = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']

  # inicializa contador e indice de escala
  i = natural_notes.index(note1)
  count = 1

  # si es la misma nota se comienza desde la siguiente
  if note1 == note2
    count += 1; i += 1
  end
  
  # cuenta las notas
  while natural_notes[i] != note2
    i += 1
    if i > natural_notes.length
    i = 0; next 
    end
    count += 1
  end
  
  count = count + (8 * step) - 1 if step > 0
  
  count
end

# TEST: 
p calc_interv 'do', 'fa', 1
p calc_interv 'do', 're', 1
p calc_interv 'do', 'sol', 1
p calc_interv 'do', 'si', 0
p calc_interv 'si', 'mi', 0
p calc_interv 'si', 'la', 0
p calc_interv 'si', 'si', 0




