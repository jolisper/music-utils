require 'music-utils'

describe MusicUtils do
  include Scales
  
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
    
  end

  context "Scales" do
    context "Major scale" do
      context "Natural notes" do
        it "the major scale of DO should be [DO, RE, MI, FA, SOL, LA, SI, DO]" do
          scale(DO, MAJ_SCALE).should == [DO, RE, MI, FA, SOL, LA, SI, DO]
        end
        it "the major scale of RE should be [RE, MI, FAS, SOL, LA, SI, DOS, RE]" do
          scale(RE, MAJ_SCALE).should == [RE, MI, FAS, SOL, LA, SI, DOS, RE]
        end
        it "the major scale of MI should be [MI, FAS, SOLS, LA, SI, DOS, RES, MI]" do
          scale(MI, MAJ_SCALE).should == [MI, FAS, SOLS, LA, SI, DOS, RES, MI]
        end
        it "the major scale of FA should be [FA, SOL, LA, SIF, DO, RE, MI, FA]" do
          scale(FA, MAJ_SCALE).should == [FA, SOL, LA, SIF, DO, RE, MI, FA]
        end
        it "the major scale of SOL should be [SOL, LA, SI, DO, RE, MI, FAS, SOL]" do
          scale(SOL, MAJ_SCALE).should == [SOL, LA, SI, DO, RE, MI, FAS, SOL]
        end
        it "the major scale of LA should be [LA, SI, DOS, RE, MI, FAS, SOLS, LA]" do
          scale(LA, MAJ_SCALE).should == [LA, SI, DOS, RE, MI, FAS, SOLS, LA]
        end
        it "the major scale of LA should be [SI, DOS, RES, MI, FAS, SOLS, LAS, SI]" do
          scale(SI, MAJ_SCALE).should == [SI, DOS, RES, MI, FAS, SOLS, LAS, SI]
        end
      end
      context "Sharped notes" do
        it "the major scale of DO# should be [DOS, RES, MIS, FAS, SOLS, LAS, SIS, DOS]" do
          scale(DOS, MAJ_SCALE).should == [DOS, RES, MIS, FAS, SOLS, LAS, SIS, DOS]
        end
        it "the major scale of RE# should be [RES, MIS, FASS, SOLS, LAS, SIS, DOSS, RES]" do
          scale(RES, MAJ_SCALE).should == [RES, MIS, FASS, SOLS, LAS, SIS, DOSS, RES]
        end
      end
      context "Flated notes" do
      end
    end
  end

end