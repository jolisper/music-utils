module MusicUtils

  # This exception its raised when 
  # a given note is invalid  
  class InvalidNote < StdError
    attr_reader :note
  
    def initialize(msg, original=$!, note)
      super(msg, original)
      @note = note
    end
  end

end

