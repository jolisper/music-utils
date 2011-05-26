module MusicUtils

  # Prevents the user of the library
  # from rescuing the global `StandardError`. 
  class StdError < StandardError
    extend Error
    attr_reader :original

    # Create the error with a message and an original that defaults to 
    # the exception that is currently active, in this thread, if one exists       
    def initialize(msg, original=$!)
      super(msg)
      @original = original;
    end
  end
end
