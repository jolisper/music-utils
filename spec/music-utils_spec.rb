require 'music-utils'

describe MusicUtils do

  context "Intervals Numbers" do
    it "the number of simple interval do-mi should be a 3rd" do
      MusicUtils.number('do', 'mi').should == 3
    end
  end

  context "Number of semitones of intervals" do
    it "simple interval do-mi should be 4 semitones" do
      MusicUtils.semitones('do', 'mi').should == 4
    end
  end
  
end