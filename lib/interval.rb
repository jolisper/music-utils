# Scales module
module Scales
  DIATONIC_SCALE = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']
end

# Esta clase representa un intervalo musical
class Interval
  include Scales

  def initialize(note1, note2, step)
    @note1 = note1
    @note2 = note2
    @step = step
  end

  # Clasifica el intervalo diatonico 
  def diatonic_interval()
    # inicializa contador e indice de escala
    i = DIATONIC_SCALE.index(@note1)
    count = 1

    # si es la misma nota se comienza desde la siguiente
    if @note1 == @note2
      count += 1; i += 1
    end
  
    # cuenta las notas
    while DIATONIC_SCALE[i] != @note2
      i += 1
      if i > DIATONIC_SCALE.length
        i = 0; next 
      end
      count += 1
    end
    count = count + (8 * @step) - 1 if @step > 0
    count
  end

  # Clasifica el intervalo cromático
  def cromatic_interval()
    # inicializa contador e indice de escala
    i = DIATONIC_SCALE.index(@note1)
    count = 1

    # si es la misma nota se comienza desde la siguiente
    if @note1 == @note2
      count += 1; i += 1
    end
  
    # cuenta las notas
    while DIATONIC_SCALE[i] != @note2
      i += 1
      if i > DIATONIC_SCALE.length
        i = 0; next 
      end

      if DIATONIC_SCALE[i] == 'mi' or DIATONIC_SCALE[i] == 'si'
        count += 1
      else
        count += 2
      end
    end
    
    count = count + (12 * @step) if @step > 0
    count
  end
  
end


