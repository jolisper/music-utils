require 'interval'

describe Interval do
  it "el intervalo do-mi deberia ser una tercera" do
    i = Interval.new('do', 'mi', 0)
    i.interval.should == 3
  end
end
