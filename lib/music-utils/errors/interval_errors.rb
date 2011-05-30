module MusicUtils

  # This exception its raised when 
  # a given interval is invalid  
  class InvalidInterval < StdError
    attr_reader :interval
  
    def initialize(msg, original=$!, interval)
      super(msg, original)
      @interval = interval
    end
  end

end

