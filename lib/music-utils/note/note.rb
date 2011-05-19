module MusicUtils

  # Represents a music note
  class Note
  
    # Parse notes to obtaining the raw note and its alterations separately
    def self.parse(note)
      n = 0
  
      # SOL is the only note of length = 3
      n += 1 if note[0..2].to_sym == MusicUtils::SOL
      
      note_aux = note[0..1 + n].to_sym
      note_alt = note[2 + n..3 + n]
    
      [note_aux, note_alt]
    end      
  
  end

end