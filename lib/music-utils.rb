require 'music-utils/interval/interval'

# Music utils 
module MusicUtils
  
  # Returns the number of the interval
  def MusicUtils.number(note1, note2)
    Interval.new(note1, note2, 0).number
  end
    
  # Returns semitones of interval
  def MusicUtils.semitones(note1, note2)
    Interval.new(note1, note2, 0).semitones
  end
  
  
end