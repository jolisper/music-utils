require 'music-utils'

describe MusicUtils do

  context "Intervals" do

    context "By number" do
      it "the number of simple interval do-mi should be a 3rd" do
        MusicUtils.number('do', 'mi').should == 3
      end
      it "the number of do-mi compound interval should be a 10th" do
        MusicUtils.number('do', 'mi', 1).should == 10
      end
    end
      
    context "By semitones" do  
      it "simple interval do-mi should be 4 semitones" do
        MusicUtils.semitones('do', 'mi').should == 4
      end
      it "compound interval do-mi should be 16 semitones" do
        MusicUtils.semitones('do', 'mi', 1).should == 16
      end
    end
    
    context "By quality" do  
      it "quality of interval do-mi should be M" do
        MusicUtils.quality('do', 'mi').should == 'M'
      end
      it "quality of compound interval do-mi should be M" do
        MusicUtils.quality('do', 'mi', 1).should == 'M'
      end
    end

    context "By short notation" do  
      it "the short notation of do#-mi interval should be m3" do
        MusicUtils.short('do#', 'mi').should == 'm3'
      end
      it "the short notation of do#-mi compound interval should be m10" do
        MusicUtils.short('do#', 'mi', 1).should == 'm10'
      end
    end
    
  end

end