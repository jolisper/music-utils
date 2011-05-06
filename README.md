music-utils
=========

Utils for music. At the moment only to classify interval.

Examples
--------
Simple intervals:
  
  * MusicUtils.number('do', 'mi')         #=> 3 (3th)
  * MusicUtils.semitones('do', 'mi')      #=> 4 (semi-tones)
  * MusicUtils.quality('do', 'mi')        #=> M (major)
  * MusicUtils.quality('do#', 'mi')       #=> m (minor)

Compound intervals:
  
  * MusicUtils.number('do', 'mi', 1)      #=> 10 (10th)
  * MusicUtils.semitones('do', 'mi', 1)   #=> 16 (semi-tones)
  * MusicUtils.quality('do', 'mi', 1)     #=> M (major)
  * MusicUtils.quality('dob', 'mi#', 1)   #=> AA (augmented plus)

Short Notation:

  * MusicUtils.short('do', 're')          #=> M2
  * MusicUtils.short('do', 're', 1)       #=> M9
  * MusicUtils.short('do#', 'mi')         #=> m3
  * MusicUtils.short('do#', 'mi', 1)      #=> m10

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

