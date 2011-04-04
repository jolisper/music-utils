require 'interval'

describe Interval do
  
  it "el intervalo diatonico simple do-mi deberia ser una 3ra" do
    i = Interval.new('do', 'mi', 0)
    i.diatonic_interval.should == 3
  end

  it "el intervalo diatonico simple do-do deberia ser una 8va" do
    i = Interval.new('do', 'do', 0)
    i.diatonic_interval.should == 8
  end

  it "el intervalo diatonico compuesto do-mi deberia ser una 10ma" do
    i = Interval.new('do', 'mi', 1)
    i.diatonic_interval.should == 10
  end

  it "el intervalo cromatico simple do-mi deberia ser de 4 semi-tonos" do
    i = Interval.new('do', 'mi', 0)
    i.cromatic_interval.should == 4
  end

  it "el intervalo cromatico simple do-do deberia ser de 12 semi-tonos" do
    i = Interval.new('do', 'do', 0)
    i.cromatic_interval.should == 12
  end

  it "el intervalo cromatico compuesto do-mi deberia ser de 16 semi-tonos" do
    i = Interval.new('do', 'mi', 1)
    i.cromatic_interval.should == 16
  end

end

