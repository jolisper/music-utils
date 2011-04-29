music-utils
=========

Utils for music. At the moment only one class to classify intervals.

Examples
--------
Simple intervals:
  
  * Interval.new('do', 'mi', 0).number    #=> 3 (3th)
  * Interval.new('do', 'mi', 0).semitone  #=> 4 (semi-tones)
  * Interval.new('do', 'mi', 0).quality   #=> M (major)
  * Interval.new('do#', 'mi', 0).quality  #=> m (minor)

Compound intervals:
  
  * Interval.new('do', 'mi', 1).number    #=> 10 (10th)
  * Interval.new('do', 'mi', 1).semitone  #=> 16 (semi-tones)
  * Interval.new('do', 'mi', 1).quality   #=> M (major)
  * Interval.new('dob', 'mi#', 1).quality #=> AA (augmented plus)

Short Notation:

  * Interval.new('do', 're', 0).short     #=> M2
  * Interval.new('do', 're', 1).short     #=> M9
  * Interval.new('do#', 'mi', 0).short    #=> m3
  * Interval.new('do#', 'mi', 1).short    #=> m10

Installation
-----------

    gem install music-utils


To Do
-----
  * Add more rspec examples
  * Add validations (notes, alterations, etc) 

Copyright
---------

Copyright (c) 2011 Jorge Luis Pérez. See LICENSE for details.

