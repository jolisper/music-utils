
def calc_interv(note1, note2)
  natural_notes = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']
  i = natural_notes.index(note1)
  return 8 if note1 == note2
  count = 1
  while natural_notes[i] != note2
    i += 1
    if i > natural_notes.length
      i = 0; next 
    end
    count += 1
  end
  count 
end

# TEST: 
p calc_interv 'do', 'do'
p calc_interv 'do', 'mi'
p calc_interv 'do', 'si'
p calc_interv 'si', 'mi'
p calc_interv 'si', 'la'
p calc_interv 'si', 'si'
p calc_interv 'fa', 'do'


