music-utils
===========

Utils to clasify music intervals, create scales and more.


Examples
--------

### Intervals

Simples:
  
    MusicUtils.number(:do, :mi)                   #=> 3 (3th)
    MusicUtils.semitones(:do, :mi)                #=> 4 (semi-tones)
    MusicUtils.quality(:do, :mi)                  #=> M (major)

Compounds:

    MusicUtils.number(:do, :mi, 1)                #=> 10 (3th)
    MusicUtils.semitones(:do, :mi, 1)             #=> 16 (semi-tones)
    MusicUtils.quality(:do, :mi, 1)               #=> M (major)

Short Notation:

    MusicUtils.short(:do, :mi)                    #=> M3
    MusicUtils.short(:do, :mi, 1)                 #=> M10

### Scales

Create scales:

    MusicUtils.scale(:fa, MusicUtils::MAJ_SCALE)  #=> [:fa, :sol, :la, :sib, :do, :re, :mi]


Installation
-----------

    gem install music-utils
    

Usage
-----
The `MusicUtils` module has constants to refer to common items like notes and scales. 

    require 'music-utils'
    
    MusicUtils.short(MusicUtils::SOL, MusicUtils::DOF)
    MusicUtils.scale(MusicUtils::SOL, MusicUtils::MAJ_SCALE)


Testing
-------

To run the tests:

    $ rake


To Do
-----

* Fix octave semitones count bug 
* Add validations (notes, alterations, etc) 
* Add support to pentatonic scale and others


Copyright
---------

Copyright (c) 2011 Jorge Luis Pérez. See LICENSE for details.

