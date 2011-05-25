require 'music-utils/interval/interval'
require 'music-utils/scales/scales'

# Music utils 
module MusicUtils
  include Scales
  
  # Returns the number of the interval
  def MusicUtils.number(note1, note2, step = 0)
    Interval.new(note1, note2, step).number
  end
    
  # Returns semitones of interval
  def MusicUtils.semitones(note1, note2, step = 0)
    Interval.new(note1, note2, step).semitones
  end

  # Returns the quality of interval
  def MusicUtils.quality(note1, note2, step = 0)
    Interval.new(note1, note2, step).quality
  end

  # Returns short notation
  def MusicUtils.short(note1, note2, step = 0)
    Interval.new(note1, note2, step).short
  end
  
  # Returns the second note of an interval
  # calculates from its first note and number 
  # and quality in short notation
  def MusicUtils.high_note(from, short)
    Interval.high_note(from, short)
  end
  
  # Returns a scale 
  def MusicUtils.scale(from, scale)
    Scales.scale(from, scale)
  end

end
