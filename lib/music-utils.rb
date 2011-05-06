require 'music-utils/interval/interval'

# Music utils 
module MusicUtils
  
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

end