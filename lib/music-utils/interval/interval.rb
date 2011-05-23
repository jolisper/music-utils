require 'music-utils/scales/scales'
require 'music-utils/note/note'

module MusicUtils
  
  # This class represents a music interval
  class Interval
    include Scales
  
    def initialize(note1, note2, step)
      @note1, @note1_alt = MusicUtils::Note.parse(note1)
      @note2, @note2_alt = MusicUtils::Note.parse(note2)
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
      return CROMATIC_SCALE.length if @note1 == @note2
      
      # initialize counter and index of scale
      i = note1_index 
      count = 0
      
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
      count += Interval.alter_impact_in_semitones(@note1_alt, true)
      count += Interval.alter_impact_in_semitones(@note2_alt, false)
  
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

    # Returns the second note of an interval
    # calculates from its first note and number 
    # and quality in short notation
    def self.second_note(from, short)
      quality, number = parse_short(short)
      
      while number > 7
        number = number - 7
      end
      
      from_note, from_alter = Note.parse(from)

      to_note = Scales.diatonic_scale_from(from_note)[number - 1]
      intervals = Scales::QUALITIES[number].key(quality)
      intervals += alter_impact_in_semitones(from_alter, false)
      
      from_note_index = Scales.cromatic_index(from_note.to_sym)
      to_note_index = from_note_index + intervals

      puts to_note_index

      while to_note_index > 11
        to_note_index = to_note_index - 12
      end

      Scales::CROMATIC_SCALE[to_note_index].select do |note|  
        raw_note, alter = Note.parse(note)
        raw_note == to_note
      end.first
    end

    # Short notation parser method
    def self.parse_short(sn)
      short = sn.to_s
    
      quality = short[0..1]
      number = short[2..3].to_i
      
      if quality == Scales::DIMP or quality == Scales::AUGP
        # nothing to do
      else
        quality = short[0]
        number = short[1..2].to_i
      end
      [quality, number]
    end

    private
  
    # Common loop to search note 2 
    def until_find_note2(i)
      length = DIATONIC_SCALE.length - 1
      # search note2
      while DIATONIC_SCALE[i] != @note2
        i += 1
        if i > length
          i = 0; 
        end
        yield i
      end
    end
    
    # Jumps to the next note if note 1 and note 2 are the same
    def no_unison(count, i)   
      if @note1 == @note2
        if DIATONIC_SCALE[i] == Scales::FA or DIATONIC_SCALE[i] == Scales::DO
          count += 1
        else
          count += 2
        end
        i += 1
      end
      [count, i]
    end
    
    # Returns index of note 1
    def note1_index
      DIATONIC_SCALE.index(@note1)
    end

    def self.alter_impact_in_semitones(alter, from_note)
      impact = 0
      case alter
        when Scales::FLAT   ; impact = from_note ?  1 : -1
        when Scales::SHARP  ; impact = from_note ? -1 :  1
        when Scales::DFLAT  ; impact = from_note ?  2 : -2
        when Scales::DSHARP ; impact = from_note ? -2 :  2
      end
      impact
    end

  end
  
end
