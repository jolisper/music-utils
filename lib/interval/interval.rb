require 'scales/scales'

# This class represents a music interval
module MusicUtils
  
  class Interval
    include Scales
  
    def initialize(note1, note2, step)
      @note1 = note1
      @note2 = note2
      @step = step
    end
  
    # It classifies the diatonic interval
    def number
      # initialize counter and index of scale
      i = note1_index
      count = 1
  
      count, i = no_unison(count, i)
  
      # Counting notes
      until_find_note2(i) { count += 1 }
  
      count = count + (8 * @step) - 1 if @step > 0
      count
    end
  
    # Returns the number of semitones
    def semitone
      # initialize counter and index of scale
      i = note1_index 
      count = 0
  
      count, i = no_unison(count, i)
      
      # counting semi-tones
      until_find_note2(i) do |i|
        # from 'mi' to 'fa' and 'si' to 'do' there 1 semi-tone
        if DIATONIC_SCALE[i] == 'fa' or DIATONIC_SCALE[i] == 'do'
          count += 1
        else
          count += 2
        end
      end
      
      count = count + (12 * @step) if @step > 0
      
      # counting notes alterations
      alter = @note1[2..3]
      
      alter.each_char do |c|
        count += 1 if c == 'b'
        count -= 1 if c == '#'
      end
  
      alter = @note2[2..3]
  
      alter.each_char do |c|
        count -= 1 if c == 'b'
        count += 1 if c == '#'
      end
  
      count
    end
    
    # Returns the quality of the interval
    def quality
      s = ( @step > 0 and semitone - (12 * @step) ) || semitone
      n = ( @step > 0 and number - (7 * @step) ) || number
      QUALITIES[n][s]
    end
  
    # Returns the class interval in the short notation
    def short
      quality + number.to_s 
    end
  
    private
  
    # Common loop to search note 2 
    def until_find_note2(i)
      # search note2
      while DIATONIC_SCALE[i] != @note2[0..1]
        i += 1
        if i > DIATONIC_SCALE.length
          i = 0; next 
        end
        yield i
      end
    end
    
    # Jumps to the next note if note 1 and note 2 are the same
    def no_unison(count, i)   
      if @note1[0..1] == @note2[0..1]
        count += 1; i += 1
      end
      [count, i]
    end
    
    # Returns index of note 1
    def note1_index
      DIATONIC_SCALE.index(@note1[0..1])
    end
  
  end
  
end
