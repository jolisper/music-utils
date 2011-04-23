# Scales module
module Scales
  DIATONIC_SCALE = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']
  QUALITIES = {
        2 => {0 => 'd', 1 => 'm', 2 => 'M', 3 => 'A'},
        3 => {2 => 'd', 3 => 'm', 4 => 'M', 5 => 'A'},
        4 => {3 => 'dd', 4 => 'd', 5 => 'P', 6 => 'A', 7 => 'AA'},
        5 => {5 => 'dd', 6 => 'd', 7 => 'P', 8 => 'A', 9 => 'AA'},
        6 => {7 => 'd', 8 => 'm', 9 => 'M', 10 => 'A'},
        7 => {9 => 'd', 10 => 'm', 11 => 'M', 12 => 'A'},
        8 => {10 => 'dd', 11 => 'd', 12 => 'P', 13 => 'A', 14 => 'AA'}
      }
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
    # initialize counter and index of scale
    i = DIATONIC_SCALE.index(@note1)
    count = 0

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

      # from 'mi' to 'fa' and 'si' to 'do' there 1 semi-tone
      if DIATONIC_SCALE[i] == 'fa' or DIATONIC_SCALE[i] == 'do'
        count += 1
      else
        count += 2
      end
    end
    
    count = count + (12 * @step) if @step > 0
    count
  end
  
  # Returns the quality of the interval
  def quality
    QUALITIES[quantity][semi_tones]
  end

end


