# Scales module
module Scales
  DIATONIC_SCALE = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']
end

# This class represents a music interval
class Interval
  include Scales

  def initialize(note1, note2, step)
    @note1 = note1
    @note2 = note2
    @step = step
  end

  # It classifies the diatonic interval
  def quantity
    # initialize counter and index of scale
    i = DIATONIC_SCALE.index(@note1)
    count = 1

    # No unison
    if @note1 == @note2
      count += 1; i += 1
    end
  
    # Counting notes
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

  # Returns the number of semitones
  def semi_tones
    # inicializa contador e indice de escala
    i = DIATONIC_SCALE.index(@note1)
    count = 1

    # No unison
    if @note1 == @note2
      count += 1; i += 1
    end
  
    # Counting semi-tones
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

  def quality
      hash = {
        3 => {2 => 'd', 3 => 'm', 4 => 'M', 5 => 'A'},
        8 => {10 => 'dd', 11 => 'd', 12 => 'P', 13 => 'A', 14 => 'AA'}}
      hash[quantity][semi_tones]
  end

end


