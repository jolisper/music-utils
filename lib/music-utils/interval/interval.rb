require 'music-utils/scales/scales'

module MusicUtils
  
  # This class represents a music interval
  class Interval
    include Scales
  
    def initialize(note1, note2, step)
      @note1, @note1_alt = Interval.parse(note1)
      @note2, @note2_alt = Interval.parse(note2)
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
    def semitones
      # initialize counter and index of scale
      i = note1_index 
      count = 0
  
      count, i = no_unison(count, i)
      
      # counting semi-tones
      until_find_note2(i) do |ii|
        # from 'mi' to 'fa' and 'si' to 'do' there 1 semi-tone
        if DIATONIC_SCALE[ii] == Scales::FA or DIATONIC_SCALE[ii] == Scales::DO
          count += 1
        else
          count += 2
        end
      end
      
      count = count + (12 * @step) if @step > 0
      
      # counting notes alterations
      case @note1_alt
        when Scales::FLAT   ; count += 1
        when Scales::SHARP  ; count -= 1
        when Scales::DFLAT  ; count += 2
        when Scales::DSHARP ; count -= 2
      end

      case @note2_alt
        when Scales::FLAT   ; count -= 1
        when Scales::SHARP  ; count += 1
        when Scales::DFLAT  ; count -= 2
        when Scales::DSHARP ; count += 2
      end

      count
    end
    
    # Returns the quality of the interval
    def quality
      s = ( @step > 0 and semitones - (12 * @step) ) || semitones
      n = ( @step > 0 and number - (7 * @step) ) || number
      QUALITIES[n][s]
    end
  
    # Returns the class interval in the short notation
    def short
      quality + number.to_s 
    end

    # Parse notes to obtaining the raw note and its alterations separately
    def Interval.parse(note)
      n = 0
  
      # SOL is the only note of length = 3
      n += 1 if note[0..2].to_sym == SOL
      
      note_aux = note[0..1 + n].to_sym
      note_alt = note[2 + n..3 + n]
    
      [note_aux, note_alt]
    end      
  
    private
  
    # Common loop to search note 2 
    def until_find_note2(i)
      length = DIATONIC_SCALE.length
      # search note2
      while DIATONIC_SCALE[i] != @note2
        i += 1
        if i > length
          i = 0; next 
        end
        yield i
      end
    end
    
    # Jumps to the next note if note 1 and note 2 are the same
    def no_unison(count, i)   
      if @note1 == @note2
        count += 1; i += 1
      end
      [count, i]
    end
    
    # Returns index of note 1
    def note1_index
      DIATONIC_SCALE.index(@note1)
    end
    
  end
  
end
