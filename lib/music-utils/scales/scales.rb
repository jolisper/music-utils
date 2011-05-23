require 'music-utils/note/note'

module MusicUtils
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
  FLAT    = 'f'
  DFLAT   = FLAT + FLAT
  SHARP   = 's'
  DSHARP  = SHARP + SHARP

  # Altered notes
  DOF   = (DO.to_s + FLAT).to_sym
  DOFF  = (DO.to_s + DFLAT).to_sym
  DOS   = (DO.to_s + SHARP).to_sym
  DOSS  = (DO.to_s + DSHARP).to_sym
  
  REF   = (RE.to_s + FLAT).to_sym
  REFF  = (RE.to_s + DFLAT).to_sym
  RES   = (RE.to_s + SHARP).to_sym
  RESS  = (RE.to_s + DSHARP).to_sym
  
  MIF   = (MI.to_s + FLAT).to_sym
  MIFF  = (MI.to_s + DFLAT).to_sym
  MIS   = (MI.to_s + SHARP).to_sym
  MISS  = (MI.to_s + DSHARP).to_sym
  
  FAF   = (FA.to_s + FLAT).to_sym
  FAFF  = (FA.to_s + DFLAT).to_sym
  FAS   = (FA.to_s + SHARP).to_sym
  FASS  = (FA.to_s + DSHARP).to_sym
  
  SOLF  = (SOL.to_s + FLAT).to_sym
  SOLFF = (SOL.to_s + DFLAT).to_sym
  SOLS  = (SOL.to_s + SHARP).to_sym
  SOLSS = (SOL.to_s + DSHARP).to_sym

  LAF   = (LA.to_s + FLAT).to_sym
  LAFF  = (LA.to_s + DFLAT).to_sym
  LAS   = (LA.to_s + SHARP).to_sym
  LASS  = (LA.to_s + DSHARP).to_sym

  SIF   = (SI.to_s + FLAT).to_sym
  SIFF  = (SI.to_s + DFLAT).to_sym
  SIS   = (SI.to_s + SHARP).to_sym
  SISS  = (SI.to_s + DSHARP).to_sym

  CROMATIC_SCALE = [[SIS, DO, REFF], 
                    [SISS, DOS, REF], 
                    [DOSS, RE, MIFF], 
                    [RES, MIF, FAFF], 
                    [RESS, MI, FAF], 
                    [MIS, FA, SOLFF], 
                    [MISS, FAS, SOLF], 
                    [FASS, SOL, LAFF], 
                    [SOLS, LAF], 
                    [SOLSS, LA, SIFF], 
                    [LAS, SIF], 
                    [LASS, SI, DOF]]
  MAJ_SCALE = [2, 2, 1, 2, 2, 2, 1]
  NATURAL_MIN_SCALE = [2, 1, 2, 2, 1, 2, 2]
  MELODIC_MIN_SCALE = [2, 1, 2, 2, 1, 2, 1]
  
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
  
  # Create scale from a note and scale structure    
  def Scales.scale(from, scale_struct)
    from = from.to_sym
    
    i = cromatic_index(from)
    
    scale = []
    scale << from

    from_note, from_alter = MusicUtils::Note.parse(from)
    
    diatonic_scale = diatonic_scale_from(from_note)
    diatonic_scale.delete(from_note)

    length = CROMATIC_SCALE.length

    scale_struct.each do |shift|
      if i + shift > length - 1
        i = (i + shift) - (length)
        shift = 0
      end

      CROMATIC_SCALE[i + shift].each do |e|
        e_note, e_alter = MusicUtils::Note.parse(e)
          
        if diatonic_scale.first == e_note
          scale << e
          diatonic_scale.delete(diatonic_scale.first)
          break
        end 
      end
      i += shift
    end

    scale
  end
  
  # Create a diatonic scale starting with the  "from" note
  def Scales.diatonic_scale_from(from)
    diatonic_scale = []
    length = DIATONIC_SCALE.length
    i = DIATONIC_SCALE.index(from)
    c = 0
    while c < length
      diatonic_scale << DIATONIC_SCALE[i]
      i += 1
      c += 1
      if i > length - 1
        i = 0
      end 
    end
    diatonic_scale
  end

  # Returns index of the note in the cromatic scale
  def Scales.cromatic_index(from)
    i = 0
    find_it = false
    CROMATIC_SCALE.each do |e|
      if e.is_a?(Array)
        e.each do |ee|
          find_it = true if from == ee
        end
      else
        find_it = true if from == e
      end
      break if find_it
      i += 1
    end
    i
  end    

end
end