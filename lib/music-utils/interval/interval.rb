require 'music-utils/scales/scales'

# This class represents a music interval
module MusicUtils
  
  class Interval
    include Scales
  
    def initialize(note1, note2, step)
      
      # SOL is the only note of length = 3
      n = 0
      n += 1 if note1[0..2].to_sym == SOL

      @note1 = note1[0..1 + n].to_sym 
      @note1_alt = note1[2 + n..3 + n]
  
      # SOL is the only note of length = 3
      n = 0
      n += 1 if note2[0..2].to_sym == SOL

      @note2 = note2[0..1 + n].to_sym
      @note2_alt = note2[2 + n..3 + n]
      
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
      count += 1 if @note1_alt == Scales::FLAT
      coutn += 2 if @note1_alt == Scales::DFLAT
      count -= 1 if @note1_alt == Scales::SHARP
      count -= 1 if @note1_alt == Scales::DSHARP
  
      count -= 1 if @note2_alt == Scales::FLAT
      count -= 2 if @note2_alt == Scales::DFLAT
      count += 1 if @note2_alt == Scales::SHARP
      count -= 2 if @note2_alt == Scales::DSHARP
  
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
  
    private
  
    # Common loop to search note 2 
    def until_find_note2(i)
      # search note2
      while DIATONIC_SCALE[i] != @note2
        i += 1
        if i > DIATONIC_SCALE.length
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
