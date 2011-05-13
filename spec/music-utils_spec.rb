require 'music-utils'

describe MusicUtils do
  include Scales
  
  context "Intervals" do

    context "By number" do
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
      
    context "By semitones" do  
      it "simple interval do-mi should be 4 semitones" do
        MusicUtils.semitones(DO, MI).should == 4
      end
      it "compound interval do-mi should be 16 semitones" do
        MusicUtils.semitones(DO, MI, 1).should == 16
      end
    end
    
    context "By quality" do  
      it "quality of interval do-mi should be M" do
        MusicUtils.quality(DO, MI).should == 'M'
      end
      it "quality of compound interval do-mi should be M" do
        MusicUtils.quality(DO, MI, 1).should == 'M'
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

end