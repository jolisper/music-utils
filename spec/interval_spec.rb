require 'interval'

describe Interval do
  
  it "el intervalo do-mi deberia ser una tercera" do
    i = Interval.new('do', 'mi', 0)
    i.diatonic_interval.should == 3
  end

  it "el intervalo do-do deberia ser una octava" do
    i = Interval.new('do', 'do', 0)
    i.diatonic_interval.should == 8
  end

end

