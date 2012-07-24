require 'music-utils'
include MusicUtils::Scales

describe MusicUtils do
  
  context "Intervals" do

    context "By number" do
      context "Diatonic from DO" do
        it "the number of simple interval do-re should be a 2th" do
          MusicUtils.number(DO, RE).should == 2
        end
        it "the number of do-re compound interval should be a 9th" do
          MusicUtils.number(DO, RE, 1).should == 9
        end
        it "the number of simple interval do-mi should be a 3rd" do
          MusicUtils.number(DO, MI).should == 3
        end
        it "the number of do-mi compound interval should be a 10th" do
          MusicUtils.number(DO, MI, 1).should == 10
        end
        it "the number of simple interval do-fa should be a 4th" do
          MusicUtils.number(DO, FA).should == 4
        end
        it "the number of do-fa compound interval should be a 11th" do
          MusicUtils.number(DO, FA, 1).should == 11
        end
        it "the number of simple interval do-sol should be a 5th" do
          MusicUtils.number(DO, SOL).should == 5
        end
        it "the number of do-sol compound interval should be a 12th" do
          MusicUtils.number(DO, SOL, 1).should == 12
        end
        it "the number of simple interval do-la should be a 6th" do
          MusicUtils.number(DO, LA).should == 6
        end
        it "the number of do-la compound interval should be a 13th" do
          MusicUtils.number(DO, LA, 1).should == 13
        end
        it "the number of simple interval do-si should be a 7th" do
          MusicUtils.number(DO, SI).should == 7
        end
        it "the number of do-si compound interval should be a 14th" do
          MusicUtils.number(DO, SI, 1).should == 14
        end
        it "the number of simple interval do-do should be a 8th" do
          MusicUtils.number(DO, DO).should == 8
        end
        it "the number of do-do compound interval should be a 15th" do
          MusicUtils.number(DO, DO, 1).should == 15
        end
      end
    end
      
    context "By semitones" do
      context "Diatonic from DO" do
        it "simple interval do-re should be 2 semitones" do
          MusicUtils.semitones(DO, RE).should == 2
        end
        it "compound interval do-re should be 14 semitones" do
          MusicUtils.semitones(DO, RE, 1).should == 14
        end
        it "simple interval do-mi should be 4 semitones" do
          MusicUtils.semitones(DO, MI).should == 4
        end
        it "compound interval do-mi should be 16 semitones" do
          MusicUtils.semitones(DO, MI, 1).should == 16
        end
        it "simple interval do-fa should be 5 semitones" do
          MusicUtils.semitones(DO, FA).should == 5
        end
        it "compound interval do-fa should be 17 semitones" do
          MusicUtils.semitones(DO, FA, 1).should == 17 
        end
        it "simple interval do-sol should be 7 semitones" do
          MusicUtils.semitones(DO, SOL).should == 7
        end
        it "compound interval do-sol should be 17 semitones" do
          MusicUtils.semitones(DO, SOL, 1).should == 19 
        end
        it "simple interval do-la should be 9 semitones" do
          MusicUtils.semitones(DO, LA).should == 9
        end
        it "compound interval do-la should be 21 semitones" do
          MusicUtils.semitones(DO, LA, 1).should == 21 
        end
        it "simple interval do-si should be 11 semitones" do
          MusicUtils.semitones(DO, SI).should == 11
        end
        it "compound interval do-si should be 21 semitones" do
          MusicUtils.semitones(DO, SI, 1).should == 23 
        end
        it "compound interval do-do should be 21 semitones" do
          MusicUtils.semitones(DO, DO).should == 12 
        end
      end
      context "Diatonic from others" do
        it "simple interval so-la should be 2 semitones" do
          MusicUtils.semitones(SOL, LA).should == 2 
        end
        it "simple interval re-do should be 10 semitones" do
          MusicUtils.semitones(RE, DO).should == 10
        end
        it "simple interval fa-re should be 9 semitones" do
          MusicUtils.semitones(FA, RE).should == 9
        end
        it "simple interval si-mi should be 5 semitones" do
          MusicUtils.semitones(SI, MI).should == 5
        end
        it "simple interval mi-si should be 7 semitones" do
          MusicUtils.semitones(MI, SI).should == 7
        end
        it "simple interval fa-do should be 7 semitones" do
          MusicUtils.semitones(FA, DO).should == 7
        end
      end
    end
    
    context "By quality" do
      context "Diatonic from DO" do
        it "quality of interval do-re should be M" do
          MusicUtils.quality(DO, RE).should == 'M'
        end
        it "quality of compound interval do-re should be M" do
          MusicUtils.quality(DO, RE, 1).should == 'M'
        end
        it "quality of interval do-mi should be M" do
          MusicUtils.quality(DO, MI).should == 'M'
        end
        it "quality of compound interval do-mi should be M" do
          MusicUtils.quality(DO, MI, 1).should == 'M'
        end
        it "quality of interval do-fa should be P" do
          MusicUtils.quality(DO, FA).should == 'P'
        end
        it "quality of compound interval do-fa should be P" do
          MusicUtils.quality(DO, FA, 1).should == 'P'
        end
        it "quality of interval do-sol should be P" do
          MusicUtils.quality(DO, SOL).should == 'P'
        end
        it "quality of compound interval do-sol should be P" do
          MusicUtils.quality(DO, SOL, 1).should == 'P'
        end
        it "quality of interval do-la should be m" do
          MusicUtils.quality(DO, LA).should == 'm'
        end
        it "quality of compound interval do-la should be m" do
          MusicUtils.quality(DO, LA, 1).should == 'm'
        end
        it "quality of interval do-si should be M" do
          MusicUtils.quality(DO, SI).should == 'M'
        end
        it "quality of compound interval do-si should be M" do
          MusicUtils.quality(DO, SI, 1).should == 'M'
        end
      end
    end

    context "By short notation" do  
      it "the short notation of do#-mi interval should be m3" do
        MusicUtils.short(DOS, MI).should == 'm3'
      end
      it "the short notation of do#-mi compound interval should be m10" do
        MusicUtils.short(DOS, MI, 1).should == 'm10'
      end
    end
    
    context "Calculate higher note of intervals from sol" do
      it "the higher note of m2 from sol should be laf" do
        MusicUtils.high_note(:sol, :m2).should == :laf
      end
      it "the higher note of M2 from sol should be la" do
        MusicUtils.high_note(:sol, :M2).should == :la
      end
      it "the higher note of m3 from sol should be sif" do
        MusicUtils.high_note(:sol, :m3).should == :sif
      end
      it "the higher note of M3 from sol should be si" do
        MusicUtils.high_note(:sol, :M3).should == :si
      end
      it "the higher note of d4 from sol should be dof" do
        MusicUtils.high_note(:sol, :d4).should == :dof
      end
      it "the higher note of P4 from sol should be do" do
        MusicUtils.high_note(:sol, :P4).should == :do
      end
      it "the higher note of A4 from sol should be dos" do
        MusicUtils.high_note(:sol, :A4).should == :dos
      end
      it "the higher note of AA4 from sol should be doss" do
        MusicUtils.high_note(:sol, :AA4).should == :doss
      end
      it "the higher note of dd5 from sol should be reff" do
        MusicUtils.high_note(:sol, :dd5).should == :reff
      end
      it "the higher note of d5 from sol should be ref" do
        MusicUtils.high_note(:sol, :d5).should == :ref
      end
      it "the higher note of P5 from sol should be re" do
        MusicUtils.high_note(:sol, :P5).should == :re
      end
      it "the higher note of A5 from sol should be res" do
        MusicUtils.high_note(:sol, :A5).should == :res
      end
      it "the higher note of AA5 from sol should be ress" do
        MusicUtils.high_note(:sol, :AA5).should == :ress
      end
      it "the higher note of dd6 from sol should be miff" do
        MusicUtils.high_note(:sol, :dd6).should == :miff
      end
      it "the higher note of d6 from sol should be mif" do
        MusicUtils.high_note(:sol, :d6).should == :mif
      end
      it "the higher note of m6 from sol should be mi" do
        MusicUtils.high_note(:sol, :m6).should == :mi
      end
      it "the higher note of M6 from sol should be mis" do
        MusicUtils.high_note(:sol, :M6).should == :mis
      end
      it "the higher note of A6 from sol should be miss" do
        MusicUtils.high_note(:sol, :A6).should == :miss
      end
      it "the higher note of dd7 from sol should be faff" do
        MusicUtils.high_note(:sol, :dd7).should == :faff
      end
      it "the higher note of d7 from sol should be faf" do
        MusicUtils.high_note(:sol, :d7).should == :faf
      end
      it "the higher note of m7 from sol should be fa" do
        MusicUtils.high_note(:sol, :m7).should == :fa
      end
      it "the higher note of M7 from sol should be fas" do
        MusicUtils.high_note(:sol, :M7).should == :fas
      end
      it "the higher note of A7 from sol should be fass" do
        MusicUtils.high_note(:sol, :A7).should == :fass
      end
    end
    context "Calculate higher note of intervals from fas" do
      # From sol
      it "the higher note of m2 from fas should be " do
        MusicUtils.high_note(:fas, :m2).should == :sol
      end
      it "the higher note of M2 from fas should be " do
        MusicUtils.high_note(:fas, :M2).should == :sols
      end
      it "the higher note of m3 from fas should be " do
        MusicUtils.high_note(:fas, :m3).should == :la
      end
      it "the higher note of M3 from fas should be " do
        MusicUtils.high_note(:fas, :M3).should == :las
      end
      it "the higher note of d4 from fas should be " do
        MusicUtils.high_note(:fas, :d4).should == :sif
      end
      it "the higher note of P4 from fas should be " do
        MusicUtils.high_note(:fas, :P4).should == :si
      end
      it "the higher note of A4 from fas should be " do
        MusicUtils.high_note(:fas, :A4).should == :sis
      end
      it "the higher note of AA4 from fas should be " do
        MusicUtils.high_note(:fas, :AA4).should == :siss
      end
      it "the higher note of dd5 from fas should be " do
        MusicUtils.high_note(:fas, :dd5).should == :dof
      end
      it "the higher note of d5 from fas should be " do
        MusicUtils.high_note(:fas, :d5).should == :do
      end
      it "the higher note of P5 from fas should be " do
        MusicUtils.high_note(:fas, :P5).should == :dos
      end
      it "the higher note of A5 from fas should be " do
        MusicUtils.high_note(:fas, :A5).should == :doss
      end
      it "the higher note of dd6 from fas should be " do
        MusicUtils.high_note(:fas, :dd6).should == :ref
      end
      it "the higher note of d6 from fas should be " do
        MusicUtils.high_note(:fas, :d6).should == :re
      end
      it "the higher note of m6 from fas should be " do
        MusicUtils.high_note(:fas, :m6).should == :res
      end
      it "the higher note of M6 from fas should be " do
        MusicUtils.high_note(:fas, :M6).should == :ress
      end
      it "the higher note of dd7 from fas should be " do
        MusicUtils.high_note(:fas, :dd7).should == :miff
      end
      it "the higher note of d7 from fas should be " do
        MusicUtils.high_note(:fas, :d7).should == :mif
      end
      it "the higher note of m7 from fas should be " do
        MusicUtils.high_note(:fas, :m7).should == :mi
      end
      it "the higher note of M7 from fas should be " do
        MusicUtils.high_note(:fas, :M7).should == :mis
      end
      it "the higher note of A7 from fas should be " do
				# comments
        MusicUtils.high_note(:fas, :A7).should == :miss
      end
    end
  end

  context "Scales" do
    context "Major scale" do
      context "Natural notes" do
        it "the major scale of DO should be [DO, RE, MI, FA, SOL, LA, SI]" do
          MusicUtils.scale(DO, MAJ_SCALE).should == [DO, RE, MI, FA, SOL, LA, SI]
        end
        it "the major scale of RE should be [RE, MI, FAS, SOL, LA, SI, DOS]" do
          MusicUtils.scale(RE, MAJ_SCALE).should == [RE, MI, FAS, SOL, LA, SI, DOS]
        end
        it "the major scale of MI should be [MI, FAS, SOLS, LA, SI, DOS, RES]" do
          MusicUtils.scale(MI, MAJ_SCALE).should == [MI, FAS, SOLS, LA, SI, DOS, RES]
        end
        it "the major scale of FA should be [FA, SOL, LA, SIF, DO, RE, MI]" do
          MusicUtils.scale(FA, MAJ_SCALE).should == [FA, SOL, LA, SIF, DO, RE, MI]
        end
        it "the major scale of SOL should be [SOL, LA, SI, DO, RE, MI, FAS]" do
          MusicUtils.scale(SOL, MAJ_SCALE).should == [SOL, LA, SI, DO, RE, MI, FAS]
        end
        it "the major scale of LA should be [LA, SI, DOS, RE, MI, FAS, SOLS]" do
          MusicUtils.scale(LA, MAJ_SCALE).should == [LA, SI, DOS, RE, MI, FAS, SOLS]
        end
        it "the major scale of SI should be [SI, DOS, RES, MI, FAS, SOLS, LAS]" do
          MusicUtils.scale(SI, MAJ_SCALE).should == [SI, DOS, RES, MI, FAS, SOLS, LAS]
        end
      end
      context "Sharped notes" do
        it "the major scale of DO# should be [DOS, RES, MIS, FAS, SOLS, LAS, SIS]" do
          MusicUtils.scale(DOS, MAJ_SCALE).should == [DOS, RES, MIS, FAS, SOLS, LAS, SIS]
        end
        it "the major scale of RE# should be [RES, MIS, FASS, SOLS, LAS, SIS, DOSS]" do
          MusicUtils.scale(RES, MAJ_SCALE).should == [RES, MIS, FASS, SOLS, LAS, SIS, DOSS]
        end
        it "the major scale of MI# should be [MIS, FASS, SOLSS, LAS, SIS, DOSS, RESS]" do
          MusicUtils.scale(MIS, MAJ_SCALE).should == [MIS, FASS, SOLSS, LAS, SIS, DOSS, RESS]
        end
        it "the major scale of FA# should be [FAS, SOLS, LAS, SI, DOS, RES, MISS]" do
          MusicUtils.scale(FAS, MAJ_SCALE).should == [FAS, SOLS, LAS, SI, DOS, RES, MIS]
        end
        it "the major scale of SOL# should be [SOLS, LAS, SIS, DOS, RES, MIS, FASS]" do
          MusicUtils.scale(SOLS, MAJ_SCALE).should == [SOLS, LAS, SIS, DOS, RES, MIS, FASS]
        end
        it "the major scale of LA# should be [SOLS, LAS, SIS, DOS, RES, MIS, FASS]" do
          MusicUtils.scale(LAS, MAJ_SCALE).should == [LAS, SIS, DOSS, RES, MIS, FASS, SOLSS]
        end
        it "the major scale of SI# should be [SIS, DOSS, RESS, MIS, FASS, SOLSS, LASS]" do
          MusicUtils.scale(SIS, MAJ_SCALE).should == [SIS, DOSS, RESS, MIS, FASS, SOLSS, LASS]
        end
      end
      context "Flated notes" do
        it "the major scale of DOb should be [DOF, REF, MIF, FAF, SOLF, LAF, SIF]" do
          MusicUtils.scale(DOF, MAJ_SCALE).should == [DOF, REF, MIF, FAF, SOLF, LAF, SIF]
        end
        it "the major scale of REb should be [REF, MIF, FA, SOLF, LAF, SIF, DO]" do
          MusicUtils.scale(REF, MAJ_SCALE).should == [REF, MIF, FA, SOLF, LAF, SIF, DO]
        end
        it "the major scale of MIb should be [MIF, FA, SOL, LAF, SIF, DO, RE]" do
          MusicUtils.scale(MIF, MAJ_SCALE).should == [MIF, FA, SOL, LAF, SIF, DO, RE]
        end
        it "the major scale of FAb should be [FAF, SOLF, LAF, SIFF, DOF, REF, MIF]" do
          MusicUtils.scale(FAF, MAJ_SCALE).should == [FAF, SOLF, LAF, SIFF, DOF, REF, MIF]
        end
        it "the major scale of SOLb should be [SOLF, LAF, SIF, DOF, REF, MIF, FA]" do
          MusicUtils.scale(SOLF, MAJ_SCALE).should == [SOLF, LAF, SIF, DOF, REF, MIF, FA]
        end
        it "the major scale of LAb should be [LAF, SIF, DO, REF, MIF, FA, SOL]" do
          MusicUtils.scale(LAF, MAJ_SCALE).should == [LAF, SIF, DO, REF, MIF, FA, SOL]
        end
        it "the major scale of SIb should be [SIF, DO, RE, MIF, FA, SOL, LA]" do
          MusicUtils.scale(SIF, MAJ_SCALE).should == [SIF, DO, RE, MIF, FA, SOL, LA]
        end
      end
      context "Natural Minor scale" do
        # [2, 1, 2, 2, 1, 2]
        context "Natural notes" do
          it "the natural minor scale of DO should be [DO, RE, MIF, FA, SOL, LAF, SIF]" do
            MusicUtils.scale(DO, NATURAL_MIN_SCALE).should == [DO, RE, MIF, FA, SOL, LAF, SIF]
          end
          it "the natural minor scale of RE should be [RE, MI, FA, SOL, LA, SIF, DO]" do
            MusicUtils.scale(RE, NATURAL_MIN_SCALE).should == [RE, MI, FA, SOL, LA, SIF, DO]
          end
          it "the natural minor scale of MI should be [MI, FAS, SOL, LA, SI, DO, RE]" do
            MusicUtils.scale(MI, NATURAL_MIN_SCALE).should == [MI, FAS, SOL, LA, SI, DO, RE]
          end
          it "the natural minor scale of FA should be [FA, SOL, LAF, SIF, DO, REF, MIF]" do
            MusicUtils.scale(FA, NATURAL_MIN_SCALE).should == [FA, SOL, LAF, SIF, DO, REF, MIF]
          end
          it "the natural minor scale of SOL should be [SOL, LA, SIF, DO, RE, MIF, FA]" do
            MusicUtils.scale(SOL, NATURAL_MIN_SCALE).should == [SOL, LA, SIF, DO, RE, MIF, FA]
          end
          it "the natural minor scale of LA should be [LA, SI, DO, RE, MI, FA, SOL]" do
            MusicUtils.scale(LA, NATURAL_MIN_SCALE).should == [LA, SI, DO, RE, MI, FA, SOL]
          end
          it "the natural minor scale of SI should be [SI, DOS, RES, MI, FAS, SOLS, LAS, SI]" do
            MusicUtils.scale(SI, NATURAL_MIN_SCALE).should == [SI, DOS, RE, MI, FAS, SOL, LA]
          end
        end
        # [2, 1, 2, 2, 1, 2]
        context "Sharped notes" do
          it "the natural minor scale of DO# should be [DO, RE, MIF, FA, SOL, LAF, SIF]" do
            MusicUtils.scale(DOS, NATURAL_MIN_SCALE).should == [DOS, RES, MI, FAS, SOLS, LA, SI]
          end
          it "the natural minor scale of RE# should be [RE, MI, FA, SOL, LA, SIF, DO]" do
            MusicUtils.scale(RES, NATURAL_MIN_SCALE).should == [RES, MIS, FAS, SOLS, LAS, SI, DOS]
          end
          it "the natural minor scale of MI# should be [MI, FAS, SOL, LA, SI, DO, RE]" do
           MusicUtils.scale(MIS, NATURAL_MIN_SCALE).should == [MIS, FASS, SOLS, LAS, SIS, DOS, RES]
          end
          it "the natural minor scale of FA# should be [FA, SOL, LAF, SIF, DO, REF, MIF]" do
            MusicUtils.scale(FAS, NATURAL_MIN_SCALE).should == [FAS, SOLS, LA, SI, DOS, RE, MI]
          end
          it "the natural minor scale of SOL# should be [SOL, LA, SIF, DO, RE, MIF, FA]" do
            MusicUtils.scale(SOLS, NATURAL_MIN_SCALE).should == [SOLS, LAS, SI, DOS, RES, MI, FAS]
          end
          it "the natural minor scale of LA# should be [LA, SI, DO, RE, MI, FA, SOL]" do
            MusicUtils.scale(LAS, NATURAL_MIN_SCALE).should == [LAS, SIS, DOS, RES, MIS, FAS, SOLS]
          end
          it "the natural minor scale of SI# should be [SI, DOS, RES, MI, FAS, SOLS, LAS, SI]" do
            MusicUtils.scale(SIS, NATURAL_MIN_SCALE).should == [SIS, DOSS, RES, MIS, FASS, SOLS, LAS]
          end
        end
        # [2, 1, 2, 2, 1, 2]
        context "Flated notes" do
          it "the natural minor scale of DOb should be [DOF, REF, MIFF, FAF, SOLF, LAFF, SIFF]" do
            MusicUtils.scale(DOF, NATURAL_MIN_SCALE).should == [DOF, REF, MIFF, FAF, SOLF, LAFF, SIFF]
          end
          it "the natural minor scale of REb should be [REF, MIF, FAF, SOLF, LAF, SIFF, DOF]" do
            MusicUtils.scale(REF, NATURAL_MIN_SCALE).should == [REF, MIF, FAF, SOLF, LAF, SIFF, DOF]
          end
          it "the natural minor scale of MIb should be [MIF, FA, SOLF, LAF, SIF, DOF, REF]" do
            MusicUtils.scale(MIF, NATURAL_MIN_SCALE).should == [MIF, FA, SOLF, LAF, SIF, DOF, REF]
          end
          it "the natural minor scale of FAb should be [FAF, SOLF, LAFF, SIFF, DOF, REFF, MIFF]" do
            MusicUtils.scale(FAF, NATURAL_MIN_SCALE).should == [FAF, SOLF, LAFF, SIFF, DOF, REFF, MIFF]
          end
          it "the natural minor scale of SOLb should be [SOLF, LAF, SIFF, DOF, REF, MIFF, FAF]" do
            MusicUtils.scale(SOLF, NATURAL_MIN_SCALE).should == [SOLF, LAF, SIFF, DOF, REF, MIFF, FAF]
          end
          it "the natural minor scale of LAb should be [LAF, SIF, DOF, REF, MIF, FAF, SOLF]" do
            MusicUtils.scale(LAF, NATURAL_MIN_SCALE).should == [LAF, SIF, DOF, REF, MIF, FAF, SOLF]
          end
          it "the natural minor scale of SIb should be [SIF, DO, REF, MIF, FA, SOLF, LAF]" do
            MusicUtils.scale(SIF, NATURAL_MIN_SCALE).should == [SIF, DO, REF, MIF, FA, SOLF, LAF]
          end
        end
      end
      context "Pentatonic major" do
        context "Natural notes" do
          it "the pentatonic major scale of DO should be [DO, RE, MI, SOL, LA]" do
            MusicUtils.scale(DO, PENTATONIC_MAJ).should == [DO, RE, MI, SOL, LA]
          end
          it "the pentatonic major scale of RE should be [RE, MI, FAS, LA, SI]" do
            MusicUtils.scale(RE, PENTATONIC_MAJ).should == [RE, MI, FAS, LA, SI]
          end
          it "the pentatonic major scale of MI should be [MI, FAS, SOLS, SI, DOS]" do
            MusicUtils.scale(MI, PENTATONIC_MAJ).should == [MI, FAS, SOLS, SI, DOS]
          end
          it "the pentatonic major scale of FA should be [FA, SOL, LA, DO, RE]" do
            MusicUtils.scale(FA, PENTATONIC_MAJ).should == [FA, SOL, LA, DO, RE]
          end
          it "the pentatonic major scale of SOL should be [SOL, LA, SI, RE, MI]" do
            MusicUtils.scale(SOL, PENTATONIC_MAJ).should == [SOL, LA, SI, RE, MI]
          end
          it "the pentatonic major scale of LA should be [LA, SI, DOS, MI, FAS]" do
            MusicUtils.scale(LA, PENTATONIC_MAJ).should == [LA, SI, DOS, MI, FAS]
          end
          it "the pentatonic major scale of SI should be [SI, DOS, RES, FAS, SOLS]" do
            MusicUtils.scale(SI, PENTATONIC_MAJ).should == [SI, DOS, RES, FAS, SOLS]
          end
        end
        context "Sharped notes" do
          it "the major pentatonic of DO# should be  [DOS, RES, MIS, SOLS, LAS]" do
            MusicUtils.scale(DOS, PENTATONIC_MAJ).should == [DOS, RES, MIS, SOLS, LAS]
          end
          it "the major pentatonic of RE# should be [RES, MIS, FASS, LAS, SIS]" do
            MusicUtils.scale(RES, PENTATONIC_MAJ).should == [RES, MIS, FASS, LAS, SIS]
          end
          it "the major pentatonic of MI# should be  [MIS, FASS, SOLSS, SIS, DOSS]" do
            MusicUtils.scale(MIS, PENTATONIC_MAJ).should == [MIS, FASS, SOLSS, SIS, DOSS]
          end
          it "the major pentatonic of FA# should be [FAS, SOLS, LAS, DOS, RES]" do
            MusicUtils.scale(FAS, PENTATONIC_MAJ).should == [FAS, SOLS, LAS, DOS, RES]
          end
          it "the major pentatonic of SOL# should be [SOLS, LAS, SIS, RES, MIS]" do
            MusicUtils.scale(SOLS, PENTATONIC_MAJ).should == [SOLS, LAS, SIS, RES, MIS]
          end
          it "the major pentatonic of LA# should be  [LAS, SIS, DOSS, MIS, FASS]" do
            MusicUtils.scale(LAS, PENTATONIC_MAJ).should == [LAS, SIS, DOSS, MIS, FASS]
          end
          it "the major pentatonic of SI# should be [SIS, DOSS, RESS, FASS, SOLSS]" do
            MusicUtils.scale(SIS, PENTATONIC_MAJ).should == [SIS, DOSS, RESS, FASS, SOLSS]
          end
        end
        context "Flated notes" do
          it "the major pentatonic of DOb should be [DOF, REF, MIF, SOLF, LAF]" do
            MusicUtils.scale(DOF, PENTATONIC_MAJ).should == [DOF, REF, MIF, SOLF, LAF]
          end
          it "the major pentatonic of REb should be [REF, MIF, FA, LAF, SIF]" do
            MusicUtils.scale(REF, PENTATONIC_MAJ).should == [REF, MIF, FA, LAF, SIF]
          end
          it "the major pentatonic of MIb should be [MIF, FA, SOL, SIF, DO]" do
            MusicUtils.scale(MIF, PENTATONIC_MAJ).should == [MIF, FA, SOL, SIF, DO]
          end
          it "the major pentatonic of FAb should be  [FAF, SOLF, LAF, DOF, REF]" do
            MusicUtils.scale(FAF, PENTATONIC_MAJ).should == [FAF, SOLF, LAF, DOF, REF]
          end
          it "the major pentatonic of SOLb should be [SOLF, LAF, SIF, REF, MIF]" do
            MusicUtils.scale(SOLF, PENTATONIC_MAJ).should == [SOLF, LAF, SIF, REF, MIF]
          end
          it "the major pentatonic of LAb should be [LAF, SIF, DO, MIF, FA]" do
            MusicUtils.scale(LAF, PENTATONIC_MAJ).should == [LAF, SIF, DO, MIF, FA]
          end
          it "the major pentatonic of SIb should be [SIF, DO, RE, FA, SOL]" do
            MusicUtils.scale(SIF, PENTATONIC_MAJ).should == [SIF, DO, RE, FA, SOL]
          end
        end
      end
    end
  end
end

