music-utils
=========

Utils for music. At the moment only one class to classify intervals.

Examples
--------
  # Simple intervals
  Interval.new('do', 'mi', 0).number    #=> 3 (3th)
  Interval.new('do', 'mi', 0).semitone  #=> 4 (semi-tones)
  Interval.new('do', 'mi', 0).quality   #=> M (major)

  # Compound intervals
  Interval.new('do', 'mi', 1).number    #=> 10 (10th)
  Interval.new('do', 'mi', 1).semitone  #=> 16 (semi-tones)
  Interval.new('do', 'mi', 1).quality   #=> M (major)

To Do
-----
  * Add support to note alterations

Copyright
---------

Copyright (c) 2011 Jorge Luis Pérez. See LICENSE for details.

