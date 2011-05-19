music-utils
=========

Utils for music. For now to classify music intervals and create scales.

Examples
--------
Simple and Compound intervals:
  
    MusicUtils.number(:do, :mi)                 #=> 3 (3th)
    MusicUtils.semitones(:do, :mi, 1)           #=> 16 (semi-tones)
    MusicUtils.quality(:do, :mi)                #=> M (major)

Short Notation:

    MusicUtils.short(:do, :re)                  #=> M2
    MusicUtils.short(:do, :re, 1)               #=> M9

Create scales:

    MusicUtils.scale(:fa, MusicUtils::MAJ_SCALE) #=> [:fa, :sol, :la, :sib, :do, :re, :mi]


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

