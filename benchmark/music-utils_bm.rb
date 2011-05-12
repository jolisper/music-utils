$:.push File.expand_path("../../lib", __FILE__)

require 'music-utils'
require 'music-utils/scales/scales'
require 'benchmark'

n = 100_000
label_width = 60

Benchmark.bm(label_width) do |b|
  b.report('Classifying do-mi interval with strings (number):') do 
    n.times { MusicUtils.number('do', 'mi') }
  end
  b.report('Classifying do-mi interval with strings (quality):') do 
    n.times { MusicUtils.quality('do', 'mi') }
  end
  b.report('Classifying do-mi interval with strings (short notation):') do 
    n.times { MusicUtils.short('do', 'mi') }
  end
  
  b.report('Classifying do-mi interval with scales (number):') do
    n.times { MusicUtils.number(Scales::DO, Scales::MI) }
  end
  b.report('Classifying do-mi interval with scales (quality):') do
    n.times { MusicUtils.quality(Scales::DO, Scales::MI) }
  end
  b.report('Classifying do-mi interval with scales (short notation):') do
    n.times { MusicUtils.short(Scales::DO, Scales::MI) }
  end
end
