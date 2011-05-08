# Scales module
module Scales
  
  # Notes
  DO = :do
  RE = :re
  MI = :mi
  FA = :fa
  SOL = :sol
  LA = :la
  SI = :si
  
  DIATONIC_SCALE = [DO, RE, MI, FA, SOL, LA, SI]

  # Alterations:
  FLAT = 'b'
  DFLAT = FLAT + FLAT
  SHARP = '#'
  DSHARP = SHARP + SHARP

  # Qualities
  PERF = 'P'
  MAJ = 'M'
  MIN = 'm'
  AUG = 'A'
  AUGP = AUG + AUG
  DIM = 'd'
  DIMP = DIM + DIM

  # Qualities hash
  QUALITIES = {
        2 => {0 => DIM, 1 => MIN, 2 => MAJ, 3 => AUG, 4 => AUGP},
        3 => {1 => DIMP, 2 => DIM, 3 => MIN, 4 => MAJ, 5 => AUG, 6 => AUGP},
        4 => {3 => DIMP, 4 => DIM, 5 => PERF, 6 => AUG, 7 => AUGP},
        5 => {5 => DIMP, 6 => DIM, 7 => PERF, 8 => AUG, 9 => AUGP},
        6 => {6 => DIMP, 7 => DIM, 8 => MIN, 9 => MAJ, 10 => AUG, 11 => AUGP},
        7 => {8 => DIMP, 9 => DIM, 10 => MIN, 11 => MAJ, 12 => AUG, 13 => AUGP},
        8 => {10 => DIMP, 11 => DIM, 12 => PERF, 13 => AUG, 14 => AUGP}
      }

end
