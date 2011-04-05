music-utils
=========

Utils for music.

Example
-------
    # simple interval in tones
    Interval.new('do', 'mi', 0).diatonic_interval # => 3
    
    # simple interval in semi-tones
    Interval.new('do', 'mi', 0).cromatic_interval # => 4

    # compound interval in tones
    Interval.new('do', 'mi', 1).diatonic_interval # => 10
    
    # compound interval in semi-tones
    Interval.new('do', 'mi', 1).cromatic_interval # => 16

Copyright
---------

Copyright (c) 2010 Jorge Luis Pérez. See LICENSE for details.

