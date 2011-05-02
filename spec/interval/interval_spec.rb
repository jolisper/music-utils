require 'interval/interval'

describe  MusicUtils::Interval do
  
  context "Number of intervals" do
    it "the number of simple interval do-mi should be a 3rd" do
      i = MusicUtils::Interval.new('do', 'mi', 0)
      i.number.should == 3
    end
    
    it "the number of simple interval do-do should be an 8th" do
      i = MusicUtils::Interval.new('do', 'do', 0)
      i.number.should == 8
    end
    
    it "the number of do-mi compound interval should be a 10th" do
      i = MusicUtils::Interval.new('do', 'mi', 1)
      i.number.should == 10
    end
  end
  
  context "Number of semitones of intervals" do
    it "simple interval do-mi should be 4 semitones" do
      i = MusicUtils::Interval.new('do', 'mi', 0)
      i.semitones.should == 4
    end

    it "simple interval dob-mi# should be 6 semitones" do
      i = MusicUtils::Interval.new('dob', 'mi#', 0)
      i.semitones.should == 6
    end

    it "simple interval do-do should be 12 semitones" do
      i = MusicUtils::Interval.new('do', 'do', 0)
      i.semitones.should == 12
    end
    
    it "compound interval do-mi should be 16 semitones" do
      i = MusicUtils::Interval.new('do', 'mi', 1)
      i.semitones.should == 16
    end
  end

  context "Interval qualities" do
    it "quality of interval do-re should be M" do
      i = MusicUtils::Interval.new('do', 're', 0)
      i.quality.should == 'M'
    end
    
    it "quality of interval do-mi should be M" do
      i = MusicUtils::Interval.new('do', 'mi', 0)
      i.quality.should == 'M'
    end
  
    it "quality of interval do#-mi should be m" do
      i = MusicUtils::Interval.new('do#', 'mi', 0)
      i.quality.should == 'm'
    end

    it "quality of interval do#-mi should be m" do
      i = MusicUtils::Interval.new('do#', 'mi', 0)
      i.quality.should == 'm'
    end

    it "quality of interval do-do should be P" do
      i = MusicUtils::Interval.new('do', 'do', 0)
      i.quality.should == 'P'
    end

    it "quality of compound interval dob-mi# should be AA" do
      i = MusicUtils::Interval.new('dob', 'mi#', 1)
      i.quality.should == 'AA'
    end
  
    it "quality of compound interval do-mi should be M" do
      i = MusicUtils::Interval.new('do', 'mi', 1)
      i.quality.should == 'M'
    end

  end
  
  context "Short Notation" do
    it "the short notation of do-re interval should be M2" do
      i = MusicUtils::Interval.new('do', 're', 0)
      i.short.should == 'M2'
    end

    it "the short notation of do-re compound interval should be M9" do
      i = MusicUtils::Interval.new('do', 're', 1)
      i.short.should == 'M9'
    end

    it "the short notation of do#-mi interval should be m3" do
      i = MusicUtils::Interval.new('do#', 'mi', 0)
      i.short.should == 'm3'
    end
  
    it "the short notation of do#-mi compound interval should be m10" do
      i = MusicUtils::Interval.new('do#', 'mi', 1)
      i.short.should == 'm10'
    end

  end
end

