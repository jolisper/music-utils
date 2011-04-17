require 'interval'

describe Interval do
  
  it "simple diatonic interval do-mi should be a 3rd" do
    i = Interval.new('do', 'mi', 0)
    i.diatonic_interval.should == 3
  end

  it "simple diatonic interval do-do should be an 8th" do
    i = Interval.new('do', 'do', 0)
    i.diatonic_interval.should == 8
  end

  it "compound diatonic interval do-mi should be a 10th" do
    i = Interval.new('do', 'mi', 1)
    i.diatonic_interval.should == 10
  end

  it "simple cromatic interval do-mi should be 4 semi tones" do
    i = Interval.new('do', 'mi', 0)
    i.cromatic_interval.should == 4
  end

  it "simple cromatic interval do-do should be 12 semi tones" do
    i = Interval.new('do', 'do', 0)
    i.cromatic_interval.should == 12
  end

  it "compound chromatic interval do-mi should be 16 semi tones" do
    i = Interval.new('do', 'mi', 1)
    i.cromatic_interval.should == 16
  end

  it "class of interval do-mi should be 3M" do
    i = Interval.new('do', 'mi', 0)
    i.interval_class.should == '3M'
  end

  it "class of interval do-mi should be 8J" do
    i = Interval.new('do', 'do', 0)
    i.interval_class.should == '8J'
  end

end

