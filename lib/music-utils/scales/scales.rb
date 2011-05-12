# Scales module
module Scales
  
  # Notes
  DO  = :do
  RE  = :re
  MI  = :mi
  FA  = :fa
  SOL = :sol
  LA  = :la
  SI  = :si
  
  DIATONIC_SCALE = [DO, RE, MI, FA, SOL, LA, SI]

  # Alterations:
  FLAT    = 'b'
  DFLAT   = FLAT + FLAT
  SHARP   = '#'
  DSHARP  = SHARP + SHARP

  # Altered notes
  DOF   = DO.to_s + FLAT
  DOFF  = DO.to_s + DFLAT
  DOS   = DO.to_s + SHARP
  DOSS  = DO.to_s + DSHARP
  
  REF   = RE.to_s + FLAT
  REFF  = RE.to_s + DFLAT
  RES   = RE.to_s + SHARP
  RESS  = RE.to_s + DSHARP
  
  MIF   = MI.to_s + FLAT
  MIFF  = MI.to_s + DFLAT
  MIS   = MI.to_s + SHARP
  MISS  = MI.to_s + DSHARP
  
  FAF   = FA.to_s + FLAT
  FAFF  = FA.to_s + DFLAT
  FAS   = FA.to_s + SHARP
  FASS  = FA.to_s + DSHARP
  
  SOLF   = SOL.to_s + FLAT
  SOLFF  = SOL.to_s + DFLAT
  SOLS   = SOL.to_s + SHARP
  SOLSS  = SOL.to_s + DSHARP

  LAF   = LA.to_s + FLAT
  LAFF  = LA.to_s + DFLAT
  LAS   = LA.to_s + SHARP
  LASS  = LA.to_s + DSHARP

  SIF   = SI.to_s + FLAT
  SIFF  = SI.to_s + DFLAT
  SIS   = SI.to_s + SHARP
  SISS  = SI.to_s + DSHARP

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
        6 => {7 => DIMP, 8 => DIM, 9 => MIN, 10 => MAJ, 11 => AUG, 12 => AUGP},
        7 => {8 => DIMP, 9 => DIM, 10 => MIN, 11 => MAJ, 12 => AUG, 13 => AUGP},
        8 => {10 => DIMP, 11 => DIM, 12 => PERF, 13 => AUG, 14 => AUGP}
      }

end
