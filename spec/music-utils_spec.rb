require 'music-utils'

describe MusicUtils do
  include MusicUtils::Scales
  
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
    
    context "Calculate 2nd note of an interval from sol" do
      # From sol
      it "sol m2" do
        MusicUtils.second_note(:sol, :m2).should == :laf
      end
      it "sol M2" do
        MusicUtils.second_note(:sol, :M2).should == :la
      end
      it "sol m3" do
        MusicUtils.second_note(:sol, :m3).should == :sif
      end
      it "sol M3" do
        MusicUtils.second_note(:sol, :M3).should == :si
      end
      it "sol d4" do
        MusicUtils.second_note(:sol, :d4).should == :dof
      end
      it "sol P4" do
        MusicUtils.second_note(:sol, :P4).should == :do
      end
      it "sol A4" do
        MusicUtils.second_note(:sol, :A4).should == :dos
      end
      it "sol AA4" do
        MusicUtils.second_note(:sol, :AA4).should == :doss
      end
      it "sol dd5" do
        MusicUtils.second_note(:sol, :dd5).should == :reff
      end
      it "sol d5" do
        MusicUtils.second_note(:sol, :d5).should == :ref
      end
      it "sol P5" do
        MusicUtils.second_note(:sol, :P5).should == :re
      end
      it "sol A5" do
        MusicUtils.second_note(:sol, :A5).should == :res
      end
      it "sol AA5" do
        MusicUtils.second_note(:sol, :AA5).should == :ress
      end
      it "sol AA5" do
        MusicUtils.second_note(:sol, :AA5).should == :ress
      end
      it "sol dd6" do
        MusicUtils.second_note(:sol, :dd6).should == :miff
      end
      it "sol d6" do
        MusicUtils.second_note(:sol, :d6).should == :mif
      end
      it "sol m6" do
        MusicUtils.second_note(:sol, :m6).should == :mi
      end
      it "sol M6" do
        MusicUtils.second_note(:sol, :M6).should == :mis
      end
      it "sol A6" do
        MusicUtils.second_note(:sol, :A6).should == :miss
      end
      it "sol dd7" do
        MusicUtils.second_note(:sol, :dd7).should == :faff
      end
      it "sol d7" do
        MusicUtils.second_note(:sol, :d7).should == :faf
      end
      it "sol m7" do
        MusicUtils.second_note(:sol, :m7).should == :fa
      end
      it "sol M7" do
        MusicUtils.second_note(:sol, :M7).should == :fas
      end
      it "sol A7" do
        MusicUtils.second_note(:sol, :A7).should == :fass
      end
    end
  end

  context "Scales" do
    context "Major scale" do
      context "Natural notes" do
        it "the major scale of DO should be [DO, RE, MI, FA, SOL, LA, SI, DO]" do
          MusicUtils.scale(DO, MAJ_SCALE).should == [DO, RE, MI, FA, SOL, LA, SI]
        end
        it "the major scale of RE should be [RE, MI, FAS, SOL, LA, SI, DOS, RE]" do
          MusicUtils.scale(RE, MAJ_SCALE).should == [RE, MI, FAS, SOL, LA, SI, DOS]
        end
        it "the major scale of MI should be [MI, FAS, SOLS, LA, SI, DOS, RES, MI]" do
          MusicUtils.scale(MI, MAJ_SCALE).should == [MI, FAS, SOLS, LA, SI, DOS, RES]
        end
        it "the major scale of FA should be [FA, SOL, LA, SIF, DO, RE, MI, FA]" do
          MusicUtils.scale(FA, MAJ_SCALE).should == [FA, SOL, LA, SIF, DO, RE, MI]
        end
        it "the major scale of SOL should be [SOL, LA, SI, DO, RE, MI, FAS, SOL]" do
          MusicUtils.scale(SOL, MAJ_SCALE).should == [SOL, LA, SI, DO, RE, MI, FAS]
        end
        it "the major scale of LA should be [LA, SI, DOS, RE, MI, FAS, SOLS, LA]" do
          MusicUtils.scale(LA, MAJ_SCALE).should == [LA, SI, DOS, RE, MI, FAS, SOLS]
        end
        it "the major scale of SI should be [SI, DOS, RES, MI, FAS, SOLS, LAS, SI]" do
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
      
    end
  end

end